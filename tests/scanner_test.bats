#!/usr/bin/env bats

setup() {
  cd "$BATS_TEST_DIRNAME"
  cd ..
}

@test "test scanner with example.go has expected results" {
  run bin/scanner < tests/fixtures/example.go
  expected_result="$(cat tests/fixtures/scanner_output_samples/example.txt)"
  [ "$status" -eq 0 ]
  [ "$output" = "$expected_result" ]
}

@test "test scanner with hello_world.go has expected results" {
  run bin/scanner < tests/fixtures/hello_world.go
  expected_result="$(cat tests/fixtures/scanner_output_samples/hello_world.txt)"
  [ "$status" -eq 0 ]
  [ "$output" = "$expected_result" ]
}

@test "test scanner with fib.go has expected results" {
  run bin/scanner < tests/fixtures/fib.go
  expected_result="$(cat tests/fixtures/scanner_output_samples/fib.txt)"
  [ "$status" -eq 0 ]
  [ "$output" = "$expected_result" ]
}

@test "test scanner with sigma.go has expected results" {
  run bin/scanner < tests/fixtures/sigma.go
  expected_result="$(cat tests/fixtures/scanner_output_samples/sigma.txt)"
  [ "$status" -eq 0 ]
  [ "$output" = "$expected_result" ]
}
