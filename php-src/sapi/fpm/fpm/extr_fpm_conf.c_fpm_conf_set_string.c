
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_STRVAL_P (int *) ;
 int fpm_conf_expand_pool_name (char**) ;
 int free (char*) ;
 char* strdup (int ) ;

__attribute__((used)) static char *fpm_conf_set_string(zval *value, void **config, intptr_t offset)
{
 char **config_val = (char **) ((char *) *config + offset);

 if (!config_val) {
  return "internal error: NULL value";
 }


 if (*config_val) {
  free(*config_val);
 }

 *config_val = strdup(Z_STRVAL_P(value));
 if (!*config_val) {
  return "fpm_conf_set_string(): strdup() failed";
 }
 if (fpm_conf_expand_pool_name(config_val) == -1) {
  return "Can't use '$pool' when the pool is not defined";
 }

 return ((void*)0);
}
