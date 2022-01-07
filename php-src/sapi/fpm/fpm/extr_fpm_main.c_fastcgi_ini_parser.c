
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct key_value_s {char* key; char* value; int * next; } ;


 int ZEND_INI_PARSER_ENTRY ;
 int ZLOG_ERROR ;
 char* Z_STRVAL_P (int *) ;
 int fpm_php_apply_defines_ex (struct key_value_s*,int) ;
 int strlen (char*) ;
 int zlog (int ,char*,...) ;

__attribute__((used)) static void fastcgi_ini_parser(zval *arg1, zval *arg2, zval *arg3, int callback_type, void *arg)
{
 int *mode = (int *)arg;
 char *key;
 char *value = ((void*)0);
 struct key_value_s kv;

 if (!mode || !arg1) return;

 if (callback_type != ZEND_INI_PARSER_ENTRY) {
  zlog(ZLOG_ERROR, "Passing INI directive through FastCGI: only classic entries are allowed");
  return;
 }

 key = Z_STRVAL_P(arg1);

 if (!key || strlen(key) < 1) {
  zlog(ZLOG_ERROR, "Passing INI directive through FastCGI: empty key");
  return;
 }

 if (arg2) {
  value = Z_STRVAL_P(arg2);
 }

 if (!value) {
  zlog(ZLOG_ERROR, "Passing INI directive through FastCGI: empty value for key '%s'", key);
  return;
 }

 kv.key = key;
 kv.value = value;
 kv.next = ((void*)0);
 if (fpm_php_apply_defines_ex(&kv, *mode) == -1) {
  zlog(ZLOG_ERROR, "Passing INI directive through FastCGI: unable to set '%s'", key);
 }
}
