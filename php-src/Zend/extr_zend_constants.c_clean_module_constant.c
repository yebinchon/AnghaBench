
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_constant ;


 int ZEND_CONSTANT_MODULE_NUMBER (int *) ;
 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_REMOVE ;
 scalar_t__ Z_PTR_P (int *) ;

__attribute__((used)) static int clean_module_constant(zval *el, void *arg)
{
 zend_constant *c = (zend_constant *)Z_PTR_P(el);
 int module_number = *(int *)arg;

 if (ZEND_CONSTANT_MODULE_NUMBER(c) == module_number) {
  return ZEND_HASH_APPLY_REMOVE;
 } else {
  return ZEND_HASH_APPLY_KEEP;
 }
}
