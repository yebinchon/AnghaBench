
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_bool ;
struct TYPE_2__ {int name; } ;


 int E_WARNING ;
 int FAILURE ;
 scalar_t__ IS_UNDEF ;
 int RETURN_FALSE ;
 int ZSTR_VAL (int ) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 TYPE_1__* Z_OBJCE_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int _DO_THROW (char*) ;
 int call_user_function (int *,int *,int *,int *,int ,int *) ;
 int php_error_docref (int *,int ,char*,int ) ;
 int zend_print_zval (int *,int ) ;
 int zend_printf (char*) ;
 int zval_ptr_dtor (int *) ;
 int zval_ptr_dtor_str (int *) ;

__attribute__((used)) static void reflection_export_impl(zval *return_value, zval *object, zend_bool return_output) {
 zval fname, retval;
 int result;


 ZVAL_STRINGL(&fname, "__tostring", sizeof("__tostring") - 1);
 result = call_user_function(((void*)0), object, &fname, &retval, 0, ((void*)0));
 zval_ptr_dtor_str(&fname);

 if (result == FAILURE) {
  _DO_THROW("Invocation of method __toString() failed");
  return;
 }

 if (Z_TYPE(retval) == IS_UNDEF) {
  php_error_docref(((void*)0), E_WARNING, "%s::__toString() did not return anything", ZSTR_VAL(Z_OBJCE_P(object)->name));
  RETURN_FALSE;
 }

 if (return_output) {
  ZVAL_COPY_VALUE(return_value, &retval);
 } else {

  zend_print_zval(&retval, 0);
  zend_printf("\n");
  zval_ptr_dtor(&retval);
 }
}
