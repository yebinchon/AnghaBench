
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_9__ {int ar_flags; } ;
typedef TYPE_2__ spl_array_object ;


 int SPL_ARRAY_OVERLOADED_REWIND ;
 TYPE_2__* Z_SPLARRAY_P (int *) ;
 int spl_array_rewind (TYPE_2__*) ;
 int zend_user_it_invalidate_current (TYPE_1__*) ;
 int zend_user_it_rewind (TYPE_1__*) ;

__attribute__((used)) static void spl_array_it_rewind(zend_object_iterator *iter)
{
 spl_array_object *object = Z_SPLARRAY_P(&iter->data);

 if (object->ar_flags & SPL_ARRAY_OVERLOADED_REWIND) {
  zend_user_it_rewind(iter);
 } else {
  zend_user_it_invalidate_current(iter);
  spl_array_rewind(object);
 }
}
