
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZVAL_STRING (int *,char*) ;
 int ZVAL_UNDEF (int *) ;
 int fuzzer_call_php_func_zval (char const*,int,int *) ;
 int zval_ptr_dtor (int *) ;

void fuzzer_call_php_func(const char *func_name, int nargs, char **params) {
 zval args[nargs];
 int i;

 for(i=0;i<nargs;i++) {
  ZVAL_STRING(&args[i], params[i]);
 }

 fuzzer_call_php_func_zval(func_name, nargs, args);

 for(i=0;i<nargs;i++) {
  zval_ptr_dtor(&args[i]);
  ZVAL_UNDEF(&args[i]);
 }
}
