
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_value_s {char* value; int key; struct key_value_s* next; } ;
struct fpm_worker_pool_s {char* user; char* home; TYPE_1__* config; } ;
struct TYPE_2__ {struct key_value_s* env; } ;


 int free (char*) ;
 char* getenv (char*) ;
 int strcmp (int ,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static int fpm_env_conf_wp(struct fpm_worker_pool_s *wp)
{
 struct key_value_s *kv;

 for (kv = wp->config->env; kv; kv = kv->next) {
  if (*kv->value == '$') {
   char *value = getenv(kv->value + 1);

   if (!value) {
    value = "";
   }

   free(kv->value);
   kv->value = strdup(value);
  }



  if (!strcmp(kv->key, "USER")) {
   free(wp->user);
   wp->user = 0;
  }

  if (!strcmp(kv->key, "HOME")) {
   free(wp->home);
   wp->home = 0;
  }
 }

 return 0;
}
