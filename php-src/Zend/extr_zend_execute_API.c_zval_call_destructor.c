
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_INDIRECT ;
 scalar_t__ IS_OBJECT ;
 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_REMOVE ;
 int * Z_INDIRECT_P (int *) ;
 int Z_REFCOUNT_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;

__attribute__((used)) static int zval_call_destructor(zval *zv)
{
 if (Z_TYPE_P(zv) == IS_INDIRECT) {
  zv = Z_INDIRECT_P(zv);
 }
 if (Z_TYPE_P(zv) == IS_OBJECT && Z_REFCOUNT_P(zv) == 1) {
  return ZEND_HASH_APPLY_REMOVE;
 } else {
  return ZEND_HASH_APPLY_KEEP;
 }
}
