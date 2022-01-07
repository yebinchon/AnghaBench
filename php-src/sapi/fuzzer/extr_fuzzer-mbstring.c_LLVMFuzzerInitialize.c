
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fuzzer_init_php () ;

int LLVMFuzzerInitialize(int *argc, char ***argv) {
 fuzzer_init_php();


 return 0;
}
