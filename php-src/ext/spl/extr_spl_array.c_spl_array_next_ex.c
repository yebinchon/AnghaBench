
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int spl_array_object ;
typedef int HashTable ;


 int * spl_array_get_pos_ptr (int *,int *) ;
 scalar_t__ spl_array_is_object (int *) ;
 int spl_array_skip_protected (int *,int *) ;
 int zend_hash_has_more_elements_ex (int *,int *) ;
 int zend_hash_move_forward_ex (int *,int *) ;

__attribute__((used)) static int spl_array_next_ex(spl_array_object *intern, HashTable *aht)
{
 uint32_t *pos_ptr = spl_array_get_pos_ptr(aht, intern);

 zend_hash_move_forward_ex(aht, pos_ptr);
 if (spl_array_is_object(intern)) {
  return spl_array_skip_protected(intern, aht);
 } else {
  return zend_hash_has_more_elements_ex(aht, pos_ptr);
 }
}
