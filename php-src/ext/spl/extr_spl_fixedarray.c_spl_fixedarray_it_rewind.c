
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_7__ {int flags; scalar_t__ current; } ;
typedef TYPE_2__ spl_fixedarray_object ;


 int SPL_FIXEDARRAY_OVERLOADED_REWIND ;
 TYPE_2__* Z_SPLFIXEDARRAY_P (int *) ;
 int zend_user_it_rewind (TYPE_1__*) ;

__attribute__((used)) static void spl_fixedarray_it_rewind(zend_object_iterator *iter)
{
 spl_fixedarray_object *object = Z_SPLFIXEDARRAY_P(&iter->data);

 if (object->flags & SPL_FIXEDARRAY_OVERLOADED_REWIND) {
  zend_user_it_rewind(iter);
 } else {
  object->current = 0;
 }
}
