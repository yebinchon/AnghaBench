
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint8_t ;
typedef int php_stream ;


 scalar_t__ FAILURE ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int fuzzer_call_php_func_zval (char*,int,int *) ;
 scalar_t__ fuzzer_request_startup () ;
 int php_request_shutdown (int *) ;
 int * php_stream_fopen_tmpfile () ;
 int php_stream_to_zval (int *,int *) ;
 int php_stream_write (int *,char const*,size_t) ;
 int stderr ;
 int zval_ptr_dtor (int *) ;

int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
 fprintf(stderr, "\n\nERROR:\nPHP built without EXIF, recompile with --enable-exif to use this fuzzer\n");
 exit(1);

}
