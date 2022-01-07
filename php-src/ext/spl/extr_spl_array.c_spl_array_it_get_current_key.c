
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_9__ {int ar_flags; } ;
typedef TYPE_2__ spl_array_object ;
typedef int HashTable ;


 int SPL_ARRAY_OVERLOADED_KEY ;
 TYPE_2__* Z_SPLARRAY_P (int *) ;
 int * spl_array_get_hash_table (TYPE_2__*) ;
 int spl_array_get_pos_ptr (int *,TYPE_2__*) ;
 int zend_hash_get_current_key_zval_ex (int *,int *,int ) ;
 int zend_user_it_get_current_key (TYPE_1__*,int *) ;

__attribute__((used)) static void spl_array_it_get_current_key(zend_object_iterator *iter, zval *key)
{
 spl_array_object *object = Z_SPLARRAY_P(&iter->data);
 HashTable *aht = spl_array_get_hash_table(object);

 if (object->ar_flags & SPL_ARRAY_OVERLOADED_KEY) {
  zend_user_it_get_current_key(iter, key);
 } else {
  zend_hash_get_current_key_zval_ex(aht, key, spl_array_get_pos_ptr(aht, object));
 }
}
