
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 int ZVAL_STRING (int *,char*) ;
 char* getenv (char*) ;
 int zend_hash_str_del (int *,char*,int) ;
 scalar_t__ zend_hash_str_exists (int *,char*,int) ;
 int zend_hash_str_update (int *,char*,int,int *) ;

__attribute__((used)) static void check_http_proxy(HashTable *var_table)
{
 if (zend_hash_str_exists(var_table, "HTTP_PROXY", sizeof("HTTP_PROXY")-1)) {
  char *local_proxy = getenv("HTTP_PROXY");

  if (!local_proxy) {
   zend_hash_str_del(var_table, "HTTP_PROXY", sizeof("HTTP_PROXY")-1);
  } else {
   zval local_zval;
   ZVAL_STRING(&local_zval, local_proxy);
   zend_hash_str_update(var_table, "HTTP_PROXY", sizeof("HTTP_PROXY")-1, &local_zval);
  }
 }
}
