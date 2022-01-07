
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct key_value_s {struct key_value_s* next; struct key_value_s* key; void* value; } ;


 char* Z_STRVAL_P (int *) ;
 int fpm_conf_expand_pool_name (void**) ;
 char* fpm_conf_set_boolean (int *,void**,int ) ;
 int free (struct key_value_s*) ;
 struct key_value_s* malloc (int) ;
 int memset (struct key_value_s*,int ,int) ;
 void* strdup (char*) ;

__attribute__((used)) static char *fpm_conf_set_array(zval *key, zval *value, void **config, int convert_to_bool)
{
 struct key_value_s *kv;
 struct key_value_s ***parent = (struct key_value_s ***) config;
 int b;
 void *subconf = &b;

 kv = malloc(sizeof(*kv));

 if (!kv) {
  return "malloc() failed";
 }

 memset(kv, 0, sizeof(*kv));
 kv->key = strdup(Z_STRVAL_P(key));

 if (!kv->key) {
  free(kv);
  return "fpm_conf_set_array: strdup(key) failed";
 }

 if (convert_to_bool) {
  char *err = fpm_conf_set_boolean(value, &subconf, 0);
  if (err) {
   free(kv->key);
   free(kv);
   return err;
  }
  kv->value = strdup(b ? "1" : "0");
 } else {
  kv->value = strdup(Z_STRVAL_P(value));
  if (fpm_conf_expand_pool_name(&kv->value) == -1) {
   free(kv->key);
   free(kv);
   return "Can't use '$pool' when the pool is not defined";
  }
 }

 if (!kv->value) {
  free(kv->key);
  free(kv);
  return "fpm_conf_set_array: strdup(value) failed";
 }

 kv->next = **parent;
 **parent = kv;
 return ((void*)0);
}
