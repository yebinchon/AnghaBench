
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int uint32_t ;


 int E_COMPILE_ERROR ;
 int ZSTR_VAL (int *) ;
 int zend_error_noreturn (int ,char*,int ,int ,int ) ;
 int zend_get_use_type_str (int ) ;
 scalar_t__ zend_string_equals_ci (int *,int *) ;

__attribute__((used)) static void zend_check_already_in_use(uint32_t type, zend_string *old_name, zend_string *new_name, zend_string *check_name)
{
 if (zend_string_equals_ci(old_name, check_name)) {
  return;
 }

 zend_error_noreturn(E_COMPILE_ERROR, "Cannot use%s %s as %s because the name "
  "is already in use", zend_get_use_type_str(type), ZSTR_VAL(old_name), ZSTR_VAL(new_name));
}
