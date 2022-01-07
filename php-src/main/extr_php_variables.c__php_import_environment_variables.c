
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ulong ;
typedef int zend_uchar ;


 scalar_t__ ZEND_HANDLE_NUMERIC_STR (char*,size_t,int ) ;
 int ZSTR_CHAR (int ) ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_INTERNED_STR (int *,int ) ;
 int ZVAL_NEW_STR (int *,int ) ;
 int Z_ARRVAL_P (int *) ;
 char** environ ;
 int php_register_variable_quick (char*,size_t,int *,int ) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 int tsrm_env_lock () ;
 int tsrm_env_unlock () ;
 int valid_environment_name (char*,char*) ;
 int zend_hash_index_update (int ,int ,int *) ;
 int zend_string_init (char*,size_t,int ) ;

void _php_import_environment_variables(zval *array_ptr)
{
 char **env, *p;
 size_t name_len, len;
 zval val;
 zend_ulong idx;

 tsrm_env_lock();

 for (env = environ; env != ((void*)0) && *env != ((void*)0); env++) {
  p = strchr(*env, '=');
  if (!p
   || p == *env
   || !valid_environment_name(*env, p)) {

   continue;
  }
  name_len = p - *env;
  p++;
  len = strlen(p);
  if (len == 0) {
   ZVAL_EMPTY_STRING(&val);
  } else if (len == 1) {
   ZVAL_INTERNED_STR(&val, ZSTR_CHAR((zend_uchar)*p));
  } else {
   ZVAL_NEW_STR(&val, zend_string_init(p, len, 0));
  }
  if (ZEND_HANDLE_NUMERIC_STR(*env, name_len, idx)) {
   zend_hash_index_update(Z_ARRVAL_P(array_ptr), idx, &val);
  } else {
   php_register_variable_quick(*env, name_len, &val, Z_ARRVAL_P(array_ptr));
  }
 }

 tsrm_env_unlock();
}
