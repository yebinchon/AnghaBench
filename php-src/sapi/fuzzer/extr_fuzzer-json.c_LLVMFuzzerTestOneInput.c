
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint8_t ;
typedef int php_json_parser ;


 scalar_t__ FAILURE ;
 scalar_t__ SUCCESS ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 scalar_t__ fuzzer_request_startup () ;
 char* malloc (size_t) ;
 int memcpy (char*,int const*,size_t) ;
 int php_json_parser_init (int *,int *,char*,size_t,int,int) ;
 scalar_t__ php_json_yyparse (int *) ;
 int php_request_shutdown (int *) ;
 int stderr ;
 int zval_ptr_dtor (int *) ;

int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
 fprintf(stderr, "\n\nERROR:\nPHP built without JSON, recompile with --enable-json to use this fuzzer\n");
 exit(1);

 return 0;
}
