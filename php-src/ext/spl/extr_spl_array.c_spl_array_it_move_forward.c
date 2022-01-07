
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_10__ {int ar_flags; } ;
typedef TYPE_2__ spl_array_object ;
typedef int HashTable ;


 int SPL_ARRAY_OVERLOADED_NEXT ;
 TYPE_2__* Z_SPLARRAY_P (int *) ;
 int * spl_array_get_hash_table (TYPE_2__*) ;
 int spl_array_next_ex (TYPE_2__*,int *) ;
 int zend_user_it_invalidate_current (TYPE_1__*) ;
 int zend_user_it_move_forward (TYPE_1__*) ;

__attribute__((used)) static void spl_array_it_move_forward(zend_object_iterator *iter)
{
 spl_array_object *object = Z_SPLARRAY_P(&iter->data);
 HashTable *aht = spl_array_get_hash_table(object);

 if (object->ar_flags & SPL_ARRAY_OVERLOADED_NEXT) {
  zend_user_it_move_forward(iter);
 } else {
  zend_user_it_invalidate_current(iter);
  spl_array_next_ex(object, aht);
 }
}
