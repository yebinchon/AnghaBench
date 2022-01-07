
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_constant ;


 int CONST_PERSISTENT ;
 int ZEND_CONSTANT_FLAGS (int *) ;
 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_REMOVE ;
 int * Z_PTR_P (int *) ;

__attribute__((used)) static int clean_non_persistent_constant_full(zval *zv)
{
 zend_constant *c = Z_PTR_P(zv);
 return (ZEND_CONSTANT_FLAGS(c) & CONST_PERSISTENT) ? ZEND_HASH_APPLY_KEEP : ZEND_HASH_APPLY_REMOVE;
}
