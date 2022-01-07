
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stress_argv ;


 int const* fuzz_input ;
 int const* fuzz_ptr ;
 size_t fuzz_size ;
 int stress_main (int,char**) ;

int LLVMFuzzerTestOneInput(const uint8_t* data, size_t size) {
  fuzz_input = fuzz_ptr = data;
  fuzz_size = size;

  const char* stress_argv[] = {
      "./chewing_fuzzer", "-loop", "1", "-init", ((void*)0),
  };
  stress_main(sizeof(stress_argv) / sizeof(stress_argv[0]) - 1,
              (char**)stress_argv);
  return 0;
}
