
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int php_conv_err_t ;
typedef int HashTable ;


 int PHP_CONV_ERR_NOT_FOUND ;
 int PHP_CONV_ERR_SUCCESS ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int memcpy (char*,int ,int) ;
 char* pemalloc (int,int) ;
 int * zend_hash_str_find (int *,char*,size_t) ;
 int zend_tmp_string_release (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static php_conv_err_t php_conv_get_string_prop_ex(const HashTable *ht, char **pretval, size_t *pretval_len, char *field_name, size_t field_name_len, int persistent)
{
 zval *tmpval;

 *pretval = ((void*)0);
 *pretval_len = 0;

 if ((tmpval = zend_hash_str_find((HashTable *)ht, field_name, field_name_len-1)) != ((void*)0)) {
  zend_string *tmp;
  zend_string *str = zval_get_tmp_string(tmpval, &tmp);

  *pretval = pemalloc(ZSTR_LEN(str) + 1, persistent);
  *pretval_len = ZSTR_LEN(str);
  memcpy(*pretval, ZSTR_VAL(str), ZSTR_LEN(str) + 1);
  zend_tmp_string_release(tmp);
 } else {
  return PHP_CONV_ERR_NOT_FOUND;
 }
 return PHP_CONV_ERR_SUCCESS;
}
