
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_3__ {int * arguments; scalar_t__ arg_count; } ;
typedef TYPE_1__ php_shutdown_function_entry ;


 int E_WARNING ;
 scalar_t__ SUCCESS ;
 int ZSTR_VAL (int *) ;
 TYPE_1__* Z_PTR_P (int *) ;
 scalar_t__ call_user_function (int *,int *,int *,int *,scalar_t__,int *) ;
 int php_error (int ,char*,int ) ;
 int * zend_get_callable_name (int *) ;
 int zend_is_callable (int *,int ,int *) ;
 int zend_string_release_ex (int *,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int user_shutdown_function_call(zval *zv)
{
    php_shutdown_function_entry *shutdown_function_entry = Z_PTR_P(zv);
 zval retval;

 if (!zend_is_callable(&shutdown_function_entry->arguments[0], 0, ((void*)0))) {
  zend_string *function_name
   = zend_get_callable_name(&shutdown_function_entry->arguments[0]);
  php_error(E_WARNING, "(Registered shutdown functions) Unable to call %s() - function does not exist", ZSTR_VAL(function_name));
  zend_string_release_ex(function_name, 0);
  return 0;
 }

 if (call_user_function(((void*)0), ((void*)0),
    &shutdown_function_entry->arguments[0],
    &retval,
    shutdown_function_entry->arg_count - 1,
    shutdown_function_entry->arguments + 1) == SUCCESS)
 {
  zval_ptr_dtor(&retval);
 }
 return 0;
}
