
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int spl_array_object ;
typedef int HashTable ;


 int * Z_SPLARRAY_P (int *) ;
 int * spl_array_get_hash_table (int *) ;
 int spl_array_get_pos_ptr (int *,int *) ;
 int zend_hash_get_current_key_zval_ex (int *,int *,int ) ;

void spl_array_iterator_key(zval *object, zval *return_value)
{
 spl_array_object *intern = Z_SPLARRAY_P(object);
 HashTable *aht = spl_array_get_hash_table(intern);

 zend_hash_get_current_key_zval_ex(aht, return_value, spl_array_get_pos_ptr(aht, intern));
}
