
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct key_value_s {char* key; char* value; } ;
typedef char* PG ;


 scalar_t__ FAILURE ;
 scalar_t__ IS_TRUE ;
 int MODULE_PERSISTENT ;
 int PHP_INI_STAGE_ACTIVATE ;
 scalar_t__ Z_TYPE (int ) ;
 int fpm_php_disable (char*,int ) ;
 scalar_t__ fpm_php_zend_ini_alter_master (char*,int,char*,int,int,int ) ;
 int php_dl (char*,int ,int *,int) ;
 int strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int zend_disable_class ;
 int zend_disable_function ;

int fpm_php_apply_defines_ex(struct key_value_s *kv, int mode)
{

 char *name = kv->key;
 char *value = kv->value;
 int name_len = strlen(name);
 int value_len = strlen(value);

 if (!strcmp(name, "extension") && *value) {
  zval zv;
  php_dl(value, MODULE_PERSISTENT, &zv, 1);
  return Z_TYPE(zv) == IS_TRUE;
 }

 if (fpm_php_zend_ini_alter_master(name, name_len, value, value_len, mode, PHP_INI_STAGE_ACTIVATE) == FAILURE) {
  return -1;
 }

 if (!strcmp(name, "disable_functions") && *value) {
  char *v = strdup(value);
  PG(disable_functions) = v;
  fpm_php_disable(v, zend_disable_function);
  return 1;
 }

 if (!strcmp(name, "disable_classes") && *value) {
  char *v = strdup(value);
  PG(disable_classes) = v;
  fpm_php_disable(v, zend_disable_class);
  return 1;
 }

 return 1;
}
