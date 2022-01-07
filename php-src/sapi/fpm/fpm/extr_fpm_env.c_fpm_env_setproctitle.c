
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SETPROCTITLE_PREFIX ;
 int ** fpm_env_argv ;
 scalar_t__ fpm_env_argv_len ;
 int memset (int *,int ,scalar_t__) ;
 int setproctitle (char*,char*) ;
 int setproctitle_fast (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (int *,char*,scalar_t__) ;

void fpm_env_setproctitle(char *title)
{






 if (fpm_env_argv != ((void*)0) && fpm_env_argv_len > strlen(SETPROCTITLE_PREFIX) + 3) {
  memset(fpm_env_argv[0], 0, fpm_env_argv_len);
  strncpy(fpm_env_argv[0], SETPROCTITLE_PREFIX, fpm_env_argv_len - 2);
  strncpy(fpm_env_argv[0] + strlen(SETPROCTITLE_PREFIX), title, fpm_env_argv_len - strlen(SETPROCTITLE_PREFIX) - 2);
  fpm_env_argv[1] = ((void*)0);
 }


}
