
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;


 int E_NOTICE ;
 int E_WARNING ;
 scalar_t__ IS_STRING ;
 int MAXPATHLEN ;
 int Z_ARRVAL_P (int *) ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int php_error_docref (int *,int ,char*,...) ;
 int * zend_hash_str_find (int ,char*,int) ;
 int zval_get_long (int *) ;

__attribute__((used)) static int php_zip_parse_options(zval *options, zend_long *remove_all_path, char **remove_path, size_t *remove_path_len, char **add_path, size_t *add_path_len)
{
 zval *option;
 if ((option = zend_hash_str_find(Z_ARRVAL_P(options), "remove_all_path", sizeof("remove_all_path") - 1)) != ((void*)0)) {
  *remove_all_path = zval_get_long(option);
 }


 if ((option = zend_hash_str_find(Z_ARRVAL_P(options), "remove_path", sizeof("remove_path") - 1)) != ((void*)0)) {
  if (Z_TYPE_P(option) != IS_STRING) {
   php_error_docref(((void*)0), E_WARNING, "remove_path option expected to be a string");
   return -1;
  }

  if (Z_STRLEN_P(option) < 1) {
   php_error_docref(((void*)0), E_NOTICE, "Empty string given as remove_path option");
   return -1;
  }

  if (Z_STRLEN_P(option) >= MAXPATHLEN) {
   php_error_docref(((void*)0), E_WARNING, "remove_path string is too long (max: %d, %zd given)",
      MAXPATHLEN - 1, Z_STRLEN_P(option));
   return -1;
  }
  *remove_path_len = Z_STRLEN_P(option);
  *remove_path = Z_STRVAL_P(option);
 }

 if ((option = zend_hash_str_find(Z_ARRVAL_P(options), "add_path", sizeof("add_path") - 1)) != ((void*)0)) {
  if (Z_TYPE_P(option) != IS_STRING) {
   php_error_docref(((void*)0), E_WARNING, "add_path option expected to be a string");
   return -1;
  }

  if (Z_STRLEN_P(option) < 1) {
   php_error_docref(((void*)0), E_NOTICE, "Empty string given as the add_path option");
   return -1;
  }

  if (Z_STRLEN_P(option) >= MAXPATHLEN) {
   php_error_docref(((void*)0), E_WARNING, "add_path string too long (max: %d, %zd given)",
      MAXPATHLEN - 1, Z_STRLEN_P(option));
   return -1;
  }
  *add_path_len = Z_STRLEN_P(option);
  *add_path = Z_STRVAL_P(option);
 }
 return 1;
}
