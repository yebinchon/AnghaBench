
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int E_COMPILE_ERROR ;
 int ZSTR_VAL (int const*) ;
 int zend_error_noreturn (int ,char*,int ) ;
 scalar_t__ zend_is_reserved_class_name (int const*) ;

void zend_assert_valid_class_name(const zend_string *name)
{
 if (zend_is_reserved_class_name(name)) {
  zend_error_noreturn(E_COMPILE_ERROR,
   "Cannot use '%s' as class name as it is reserved", ZSTR_VAL(name));
 }
}
