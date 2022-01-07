
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 int efree (int *) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void delete_hashtable(void *data)
{
 HashTable *ht = (HashTable*)data;
 zend_hash_destroy(ht);
 efree(ht);
}
