
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 char* Z_STRVAL_P (int *) ;
 int atoi (char*) ;

__attribute__((used)) static char *fpm_conf_set_integer(zval *value, void **config, intptr_t offset)
{
 char *val = Z_STRVAL_P(value);
 char *p;


 for (p = val; *p; p++) {
  if (p == val && *p == '-') continue;
  if (*p < '0' || *p > '9') {
   return "is not a valid number (greater or equal than zero)";
  }
 }
 * (int *) ((char *) *config + offset) = atoi(val);
 return ((void*)0);
}
