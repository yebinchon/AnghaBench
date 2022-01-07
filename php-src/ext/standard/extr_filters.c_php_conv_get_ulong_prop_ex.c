
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef scalar_t__ zend_long ;
typedef int php_conv_err_t ;
typedef int HashTable ;


 int PHP_CONV_ERR_NOT_FOUND ;
 int PHP_CONV_ERR_SUCCESS ;
 int * zend_hash_str_find (int *,char*,size_t) ;
 scalar_t__ zval_get_long (int *) ;

__attribute__((used)) static php_conv_err_t php_conv_get_ulong_prop_ex(const HashTable *ht, zend_ulong *pretval, char *field_name, size_t field_name_len)
{
 zval *tmpval = zend_hash_str_find((HashTable *)ht, field_name, field_name_len-1);
 if (tmpval != ((void*)0)) {
  zend_long lval = zval_get_long(tmpval);

  if (lval < 0) {
   *pretval = 0;
  } else {
   *pretval = lval;
  }
  return PHP_CONV_ERR_SUCCESS;
 } else {
  *pretval = 0;
  return PHP_CONV_ERR_NOT_FOUND;
 }
}
