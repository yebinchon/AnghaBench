
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct php_com_iterator {scalar_t__ key; } ;


 int ZVAL_LONG (int *,scalar_t__) ;
 int ZVAL_NULL (int *) ;
 scalar_t__ Z_PTR (int ) ;

__attribute__((used)) static void com_iter_get_key(zend_object_iterator *iter, zval *key)
{
 struct php_com_iterator *I = (struct php_com_iterator*)Z_PTR(iter->data);

 if (I->key == (zend_ulong)-1) {
  ZVAL_NULL(key);
 } else {
  ZVAL_LONG(key, I->key);
 }
}
