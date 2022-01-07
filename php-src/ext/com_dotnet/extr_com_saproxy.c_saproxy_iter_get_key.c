
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_5__ {int key; } ;
typedef TYPE_2__ php_com_saproxy_iter ;


 int ZVAL_LONG (int *,int) ;
 int ZVAL_NULL (int *) ;
 scalar_t__ Z_PTR (int ) ;

__attribute__((used)) static void saproxy_iter_get_key(zend_object_iterator *iter, zval *key)
{
 php_com_saproxy_iter *I = (php_com_saproxy_iter*)Z_PTR(iter->data);

 if (I->key == -1) {
  ZVAL_NULL(key);
 } else {
  ZVAL_LONG(key, I->key);
 }
}
