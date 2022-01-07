
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_socket ;
typedef int HashTable ;


 int SUCCESS ;
 int php_get_if_index_from_zval (int *,unsigned int*) ;
 int strlen (char const*) ;
 int * zend_hash_str_find (int const*,char const*,int ) ;

__attribute__((used)) static int php_get_if_index_from_array(const HashTable *ht, const char *key,
 php_socket *sock, unsigned int *if_index)
{
 zval *val;

 if ((val = zend_hash_str_find(ht, key, strlen(key))) == ((void*)0)) {
  *if_index = 0;
  return SUCCESS;
 }

 return php_get_if_index_from_zval(val, if_index);
}
