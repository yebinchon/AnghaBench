
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_conv_err_t ;
typedef int HashTable ;


 int PHP_CONV_ERR_NOT_FOUND ;
 int PHP_CONV_ERR_SUCCESS ;
 int * zend_hash_str_find (int *,char*,size_t) ;
 int zend_is_true (int *) ;

__attribute__((used)) static php_conv_err_t php_conv_get_bool_prop_ex(const HashTable *ht, int *pretval, char *field_name, size_t field_name_len)
{
 zval *tmpval = zend_hash_str_find((HashTable *)ht, field_name, field_name_len-1);
 if (tmpval != ((void*)0)) {
  *pretval = zend_is_true(tmpval);
  return PHP_CONV_ERR_SUCCESS;
 } else {
  *pretval = 0;
  return PHP_CONV_ERR_NOT_FOUND;
 }
}
