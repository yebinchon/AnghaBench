
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef int zend_object_iterator ;
struct php_pdo_iterator {scalar_t__ key; } ;


 int ZVAL_LONG (int *,scalar_t__) ;
 int ZVAL_NULL (int *) ;

__attribute__((used)) static void pdo_stmt_iter_get_key(zend_object_iterator *iter, zval *key)
{
 struct php_pdo_iterator *I = (struct php_pdo_iterator*)iter;

 if (I->key == (zend_ulong)-1) {
  ZVAL_NULL(key);
 } else {
  ZVAL_LONG(key, I->key);
 }
}
