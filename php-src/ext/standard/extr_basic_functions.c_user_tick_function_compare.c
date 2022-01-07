
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {scalar_t__ calling; int * arguments; } ;
typedef TYPE_1__ user_tick_function_entry ;


 int E_WARNING ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_OBJECT ;
 scalar_t__ IS_STRING ;
 scalar_t__ Z_TYPE_P (int *) ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ zend_binary_zval_strcmp (int *,int *) ;
 scalar_t__ zend_compare_arrays (int *,int *) ;
 scalar_t__ zend_compare_objects (int *,int *) ;

__attribute__((used)) static int user_tick_function_compare(user_tick_function_entry * tick_fe1, user_tick_function_entry * tick_fe2)
{
 zval *func1 = &tick_fe1->arguments[0];
 zval *func2 = &tick_fe2->arguments[0];
 int ret;

 if (Z_TYPE_P(func1) == IS_STRING && Z_TYPE_P(func2) == IS_STRING) {
  ret = zend_binary_zval_strcmp(func1, func2) == 0;
 } else if (Z_TYPE_P(func1) == IS_ARRAY && Z_TYPE_P(func2) == IS_ARRAY) {
  ret = zend_compare_arrays(func1, func2) == 0;
 } else if (Z_TYPE_P(func1) == IS_OBJECT && Z_TYPE_P(func2) == IS_OBJECT) {
  ret = zend_compare_objects(func1, func2) == 0;
 } else {
  ret = 0;
 }

 if (ret && tick_fe1->calling) {
  php_error_docref(((void*)0), E_WARNING, "Unable to delete tick function executed at the moment");
  return 0;
 }
 return ret;
}
