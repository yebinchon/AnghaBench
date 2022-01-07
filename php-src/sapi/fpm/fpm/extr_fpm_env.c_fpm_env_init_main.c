
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {struct fpm_worker_pool_s* next; } ;
struct TYPE_2__ {int argc; char** argv; int config; } ;


 int efree (char*) ;
 char** environ ;
 char** fpm_env_argv ;
 int fpm_env_argv_len ;
 scalar_t__ fpm_env_conf_wp (struct fpm_worker_pool_s*) ;
 int fpm_env_setproctitle (char*) ;
 TYPE_1__ fpm_globals ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 char** malloc (unsigned int) ;
 int spprintf (char**,int ,char*,int ) ;
 char* strdup (char*) ;
 int strlen (char*) ;

int fpm_env_init_main()
{
 struct fpm_worker_pool_s *wp;
 char *title;

 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  if (0 > fpm_env_conf_wp(wp)) {
   return -1;
  }
 }


 int i;
 char *first = ((void*)0);
 char *last = ((void*)0);
 for (i = 0; i < fpm_globals.argc; i++) {
  if (first == ((void*)0)) {
   first = fpm_globals.argv[i];
  }
  if (last == ((void*)0) || fpm_globals.argv[i] == last + 1) {
   last = fpm_globals.argv[i] + strlen(fpm_globals.argv[i]);
  }
 }
 if (environ) {
  for (i = 0; environ[i]; i++) {
   if (first == ((void*)0)) {
    first = environ[i];
   }
   if (last == ((void*)0) || environ[i] == last + 1) {
    last = environ[i] + strlen(environ[i]);
   }
  }
 }
 if (first == ((void*)0) || last == ((void*)0)) {
  return 0;
 }

 fpm_env_argv_len = last - first;
 fpm_env_argv = fpm_globals.argv;
 if (environ != ((void*)0)) {
  char **new_environ;
  unsigned int env_nb = 0U;

  while (environ[env_nb]) {
   env_nb++;
  }

  if ((new_environ = malloc((1U + env_nb) * sizeof (char *))) == ((void*)0)) {
   return -1;
  }
  new_environ[env_nb] = ((void*)0);
  while (env_nb > 0U) {
   env_nb--;
   new_environ[env_nb] = strdup(environ[env_nb]);
  }
  environ = new_environ;
 }



 spprintf(&title, 0, "master process (%s)", fpm_globals.config);
 fpm_env_setproctitle(title);
 efree(title);
 return 0;
}
