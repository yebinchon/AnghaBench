
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ FAILURE ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int fuzzer_call_php_func (char*,int,char**) ;
 scalar_t__ fuzzer_request_startup () ;
 char* malloc (size_t) ;
 int memcpy (char*,int const*,size_t) ;
 int php_request_shutdown (int *) ;
 int stderr ;

int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
 fprintf(stderr, "\n\nERROR:\nPHP built without mbstring, recompile with --enable-mbstring to use this fuzzer\n");
 exit(1);

 return 0;
}
