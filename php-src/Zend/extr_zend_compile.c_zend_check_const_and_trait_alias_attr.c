
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int E_COMPILE_ERROR ;
 int ZEND_ACC_ABSTRACT ;
 int ZEND_ACC_FINAL ;
 int ZEND_ACC_STATIC ;
 int zend_error_noreturn (int ,char*,char const*) ;

__attribute__((used)) static void zend_check_const_and_trait_alias_attr(uint32_t attr, const char* entity)
{
 if (attr & ZEND_ACC_STATIC) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot use 'static' as %s modifier", entity);
 } else if (attr & ZEND_ACC_ABSTRACT) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot use 'abstract' as %s modifier", entity);
 } else if (attr & ZEND_ACC_FINAL) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot use 'final' as %s modifier", entity);
 }
}
