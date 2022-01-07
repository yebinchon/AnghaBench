
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 char* Z_STRVAL_P (int *) ;
 char* fpm_conf_set_integer (int *,void**,int ) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static char *fpm_conf_set_rlimit_core(zval *value, void **config, intptr_t offset)
{
 char *val = Z_STRVAL_P(value);
 int *ptr = (int *) ((char *) *config + offset);

 if (!strcasecmp(val, "unlimited")) {
  *ptr = -1;
 } else {
  int int_value;
  void *subconf = &int_value;
  char *error;

  error = fpm_conf_set_integer(value, &subconf, 0);

  if (error) {
   return error;
  }

  if (int_value < 0) {
   return "must be greater than zero or 'unlimited'";
  }

  *ptr = int_value;
 }

 return ((void*)0);
}
