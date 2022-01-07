
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_7__ {int flags; int current; } ;
typedef TYPE_2__ spl_fixedarray_object ;


 int SPL_FIXEDARRAY_OVERLOADED_KEY ;
 int ZVAL_LONG (int *,int ) ;
 TYPE_2__* Z_SPLFIXEDARRAY_P (int *) ;
 int zend_user_it_get_current_key (TYPE_1__*,int *) ;

__attribute__((used)) static void spl_fixedarray_it_get_current_key(zend_object_iterator *iter, zval *key)
{
 spl_fixedarray_object *object = Z_SPLFIXEDARRAY_P(&iter->data);

 if (object->flags & SPL_FIXEDARRAY_OVERLOADED_KEY) {
  zend_user_it_get_current_key(iter, key);
 } else {
  ZVAL_LONG(key, object->current);
 }
}
