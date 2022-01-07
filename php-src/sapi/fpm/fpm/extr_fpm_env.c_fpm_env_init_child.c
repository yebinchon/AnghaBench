
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_value_s {char* key; scalar_t__ value; struct key_value_s* next; } ;
struct fpm_worker_pool_s {scalar_t__ home; scalar_t__ user; TYPE_1__* config; } ;
struct TYPE_2__ {struct key_value_s* env; scalar_t__ clear_env; int name; } ;


 int clearenv () ;
 int efree (char*) ;
 int fpm_env_setproctitle (char*) ;
 int setenv (char*,scalar_t__,int) ;
 int spprintf (char**,int ,char*,int ) ;

int fpm_env_init_child(struct fpm_worker_pool_s *wp)
{
 struct key_value_s *kv;
 char *title;
 spprintf(&title, 0, "pool %s", wp->config->name);
 fpm_env_setproctitle(title);
 efree(title);

 if (wp->config->clear_env) {
  clearenv();
 }

 for (kv = wp->config->env; kv; kv = kv->next) {
  setenv(kv->key, kv->value, 1);
 }

 if (wp->user) {
  setenv("USER", wp->user, 1);
 }

 if (wp->home) {
  setenv("HOME", wp->home, 1);
 }

 return 0;
}
