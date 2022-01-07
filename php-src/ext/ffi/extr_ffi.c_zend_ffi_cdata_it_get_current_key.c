
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int key; } ;
typedef TYPE_1__ zend_ffi_cdata_iterator ;


 int ZVAL_LONG (int *,int ) ;

__attribute__((used)) static void zend_ffi_cdata_it_get_current_key(zend_object_iterator *it, zval *key)
{
 zend_ffi_cdata_iterator *iter = (zend_ffi_cdata_iterator*)it;
 ZVAL_LONG(key, iter->key);
}
