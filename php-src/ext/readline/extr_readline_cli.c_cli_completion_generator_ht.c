
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef int zend_string ;
typedef int HashTable ;


 scalar_t__ FAILURE ;
 scalar_t__ SUCCESS ;
 char* ZSTR_VAL (int *) ;
 int strncmp (char*,char const*,size_t) ;
 void* zend_hash_get_current_data_ptr (int *) ;
 int zend_hash_get_current_key (int *,int **,int *) ;
 scalar_t__ zend_hash_has_more_elements (int *) ;
 int zend_hash_internal_pointer_reset (int *) ;
 scalar_t__ zend_hash_move_forward (int *) ;

__attribute__((used)) static char *cli_completion_generator_ht(const char *text, size_t textlen, int *state, HashTable *ht, void **pData)
{
 zend_string *name;
 zend_ulong number;

 if (!(*state % 2)) {
  zend_hash_internal_pointer_reset(ht);
  (*state)++;
 }
 while(zend_hash_has_more_elements(ht) == SUCCESS) {
  zend_hash_get_current_key(ht, &name, &number);
  if (!textlen || !strncmp(ZSTR_VAL(name), text, textlen)) {
   if (pData) {
    *pData = zend_hash_get_current_data_ptr(ht);
   }
   zend_hash_move_forward(ht);
   return ZSTR_VAL(name);
  }
  if (zend_hash_move_forward(ht) == FAILURE) {
   break;
  }
 }
 (*state)++;
 return ((void*)0);
}
