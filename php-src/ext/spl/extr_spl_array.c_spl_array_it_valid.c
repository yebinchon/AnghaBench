
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
typedef int HashTable ;


 int SPL_ARRAY_OVERLOADED_VALID ;
 TYPE_2__* Z_SPLARRAY_P (int *) ;
 int * spl_array_get_hash_table (TYPE_2__*) ;
 int spl_array_get_pos_ptr (int *,TYPE_2__*) ;
 int zend_hash_has_more_elements_ex (int *,int ) ;
 int zend_user_it_valid (TYPE_1__*) ;

__attribute__((used)) static int spl_array_it_valid(zend_object_iterator *iter)
{
 spl_array_object *object = Z_SPLARRAY_P(&iter->data);
 HashTable *aht = spl_array_get_hash_table(object);

 if (object->ar_flags & SPL_ARRAY_OVERLOADED_VALID) {
  return zend_user_it_valid(iter);
 } else {
  return zend_hash_has_more_elements_ex(aht, spl_array_get_pos_ptr(aht, object));
 }
}
