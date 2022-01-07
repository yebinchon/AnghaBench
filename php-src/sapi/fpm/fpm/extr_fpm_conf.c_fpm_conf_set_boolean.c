
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 char* Z_STRVAL_P (int *) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static char *fpm_conf_set_boolean(zval *value, void **config, intptr_t offset)
{
 char *val = Z_STRVAL_P(value);
 long value_y = !strcasecmp(val, "1");
 long value_n = !strcasecmp(val, "");

 if (!value_y && !value_n) {
  return "invalid boolean value";
 }

 * (int *) ((char *) *config + offset) = value_y ? 1 : 0;
 return ((void*)0);
}
