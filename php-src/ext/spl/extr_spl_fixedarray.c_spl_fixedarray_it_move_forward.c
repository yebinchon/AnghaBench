
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_8__ {int flags; int current; } ;
typedef TYPE_2__ spl_fixedarray_object ;


 int SPL_FIXEDARRAY_OVERLOADED_NEXT ;
 TYPE_2__* Z_SPLFIXEDARRAY_P (int *) ;
 int zend_user_it_invalidate_current (TYPE_1__*) ;
 int zend_user_it_move_forward (TYPE_1__*) ;

__attribute__((used)) static void spl_fixedarray_it_move_forward(zend_object_iterator *iter)
{
 spl_fixedarray_object *object = Z_SPLFIXEDARRAY_P(&iter->data);

 if (object->flags & SPL_FIXEDARRAY_OVERLOADED_NEXT) {
  zend_user_it_move_forward(iter);
 } else {
  zend_user_it_invalidate_current(iter);
  object->current++;
 }
}
