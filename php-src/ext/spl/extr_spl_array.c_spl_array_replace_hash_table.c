
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_array_object ;
typedef int HashTable ;


 int ** spl_array_get_hash_table_ptr (int *) ;
 int zend_array_destroy (int *) ;

__attribute__((used)) static inline void spl_array_replace_hash_table(spl_array_object* intern, HashTable *ht) {
 HashTable **ht_ptr = spl_array_get_hash_table_ptr(intern);
 zend_array_destroy(*ht_ptr);
 *ht_ptr = ht;
}
