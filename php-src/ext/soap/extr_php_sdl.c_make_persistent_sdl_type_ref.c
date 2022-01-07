
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sdlTypePtr ;
typedef int HashTable ;


 int zend_hash_next_index_insert_ptr (int *,int *) ;
 int * zend_hash_str_find_ptr (int *,char*,int) ;

__attribute__((used)) static void make_persistent_sdl_type_ref(sdlTypePtr *type, HashTable *ptr_map, HashTable *bp_types)
{
 sdlTypePtr tmp;

 if ((tmp = zend_hash_str_find_ptr(ptr_map, (char *)type, sizeof(sdlTypePtr))) != ((void*)0)) {
  *type = tmp;
 } else {
  zend_hash_next_index_insert_ptr(bp_types, *type);
 }
}
