
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int calling; int * arguments; scalar_t__ arg_count; } ;
typedef TYPE_1__ user_tick_function_entry ;
struct TYPE_5__ {int name; } ;


 int E_WARNING ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_OBJECT ;
 scalar_t__ IS_STRING ;
 scalar_t__ SUCCESS ;
 int ZSTR_VAL (int ) ;
 int Z_ARRVAL_P (int *) ;
 TYPE_3__* Z_OBJCE_P (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 scalar_t__ call_user_function (int *,int *,int *,int *,scalar_t__,int *) ;
 int php_error_docref (int *,int ,char*,...) ;
 int * zend_hash_index_find (int ,int) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void user_tick_function_call(user_tick_function_entry *tick_fe)
{
 zval retval;
 zval *function = &tick_fe->arguments[0];


 if (! tick_fe->calling) {
  tick_fe->calling = 1;

  if (call_user_function(((void*)0), ((void*)0),
        function,
        &retval,
        tick_fe->arg_count - 1,
        tick_fe->arguments + 1
        ) == SUCCESS) {
   zval_ptr_dtor(&retval);

  } else {
   zval *obj, *method;

   if (Z_TYPE_P(function) == IS_STRING) {
    php_error_docref(((void*)0), E_WARNING, "Unable to call %s() - function does not exist", Z_STRVAL_P(function));
   } else if ( Z_TYPE_P(function) == IS_ARRAY
      && (obj = zend_hash_index_find(Z_ARRVAL_P(function), 0)) != ((void*)0)
      && (method = zend_hash_index_find(Z_ARRVAL_P(function), 1)) != ((void*)0)
      && Z_TYPE_P(obj) == IS_OBJECT
      && Z_TYPE_P(method) == IS_STRING) {
    php_error_docref(((void*)0), E_WARNING, "Unable to call %s::%s() - function does not exist", ZSTR_VAL(Z_OBJCE_P(obj)->name), Z_STRVAL_P(method));
   } else {
    php_error_docref(((void*)0), E_WARNING, "Unable to call tick function");
   }
  }

  tick_fe->calling = 0;
 }
}
