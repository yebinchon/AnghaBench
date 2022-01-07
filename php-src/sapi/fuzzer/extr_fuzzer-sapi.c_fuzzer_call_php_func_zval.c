
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int CG (int ) ;
 int ZVAL_STRING (int *,char const*) ;
 int ZVAL_UNDEF (int *) ;
 int call_user_function (int ,int *,int *,int *,int,int *) ;
 int function_table ;
 int php_var_dump (int *,int ) ;
 int zval_ptr_dtor (int *) ;

void fuzzer_call_php_func_zval(const char *func_name, int nargs, zval *args) {
 zval retval, func;

 ZVAL_STRING(&func, func_name);
 ZVAL_UNDEF(&retval);
 call_user_function(CG(function_table), ((void*)0), &func, &retval, nargs, args);



 php_var_dump(&retval, 0);


 zval_ptr_dtor(&retval);
 zval_ptr_dtor(&func);
}
