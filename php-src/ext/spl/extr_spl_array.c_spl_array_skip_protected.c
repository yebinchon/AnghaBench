
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ulong ;
typedef int zend_string ;
typedef int uint32_t ;
typedef int spl_array_object ;
typedef int HashTable ;


 int FAILURE ;
 scalar_t__ HASH_KEY_IS_STRING ;
 scalar_t__ IS_INDIRECT ;
 scalar_t__ IS_UNDEF ;
 int SUCCESS ;
 int ZSTR_LEN (int *) ;
 scalar_t__* ZSTR_VAL (int *) ;
 int * Z_INDIRECT_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * spl_array_get_pos_ptr (int *,int *) ;
 scalar_t__ spl_array_is_object (int *) ;
 int * zend_hash_get_current_data_ex (int *,int *) ;
 scalar_t__ zend_hash_get_current_key_ex (int *,int **,int *,int *) ;
 int zend_hash_has_more_elements_ex (int *,int *) ;
 int zend_hash_move_forward_ex (int *,int *) ;

__attribute__((used)) static int spl_array_skip_protected(spl_array_object *intern, HashTable *aht)
{
 zend_string *string_key;
 zend_ulong num_key;
 zval *data;

 if (spl_array_is_object(intern)) {
  uint32_t *pos_ptr = spl_array_get_pos_ptr(aht, intern);

  do {
   if (zend_hash_get_current_key_ex(aht, &string_key, &num_key, pos_ptr) == HASH_KEY_IS_STRING) {
    data = zend_hash_get_current_data_ex(aht, pos_ptr);
    if (data && Z_TYPE_P(data) == IS_INDIRECT &&
        Z_TYPE_P(data = Z_INDIRECT_P(data)) == IS_UNDEF) {

    } else if (!ZSTR_LEN(string_key) || ZSTR_VAL(string_key)[0]) {
     return SUCCESS;
    }
   } else {
    return SUCCESS;
   }
   if (zend_hash_has_more_elements_ex(aht, pos_ptr) != SUCCESS) {
    return FAILURE;
   }
   zend_hash_move_forward_ex(aht, pos_ptr);
  } while (1);
 }
 return FAILURE;
}
