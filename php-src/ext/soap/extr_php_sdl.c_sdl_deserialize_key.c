
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 int WSDL_CACHE_GET_INT (int,char**) ;
 int WSDL_CACHE_SKIP (int,char**) ;
 int WSDL_NO_STRING_MARKER ;
 int zend_hash_next_index_insert_ptr (int *,void*) ;
 int zend_hash_str_add_ptr (int *,char*,int,void*) ;

__attribute__((used)) static void sdl_deserialize_key(HashTable* ht, void* data, char **in)
{
 int len;

 WSDL_CACHE_GET_INT(len, in);
 if (len == WSDL_NO_STRING_MARKER) {
  zend_hash_next_index_insert_ptr(ht, data);
 } else {
  zend_hash_str_add_ptr(ht, *in, len, data);
  WSDL_CACHE_SKIP(len, in);
 }
}
