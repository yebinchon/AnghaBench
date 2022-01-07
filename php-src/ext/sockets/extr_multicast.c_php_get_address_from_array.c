
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int socklen_t ;
typedef int php_socket ;
typedef int php_sockaddr_storage ;
typedef int HashTable ;


 int E_WARNING ;
 int FAILURE ;
 int SUCCESS ;
 int ZSTR_VAL (int *) ;
 int php_error_docref (int *,int ,char*,char const*) ;
 int php_set_inet46_addr (int *,int *,int ,int *) ;
 int strlen (char const*) ;
 int * zend_hash_str_find (int const*,char const*,int ) ;
 int zend_tmp_string_release (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static int php_get_address_from_array(const HashTable *ht, const char *key,
 php_socket *sock, php_sockaddr_storage *ss, socklen_t *ss_len)
{
 zval *val;
 zend_string *str, *tmp_str;

 if ((val = zend_hash_str_find(ht, key, strlen(key))) == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "no key \"%s\" passed in optval", key);
  return FAILURE;
 }
 str = zval_get_tmp_string(val, &tmp_str);
 if (!php_set_inet46_addr(ss, ss_len, ZSTR_VAL(str), sock)) {
  zend_tmp_string_release(tmp_str);
  return FAILURE;
 }
 zend_tmp_string_release(tmp_str);
 return SUCCESS;
}
