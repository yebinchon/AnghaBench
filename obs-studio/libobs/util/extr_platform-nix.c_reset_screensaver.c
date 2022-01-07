
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_3__ {int attr; } ;
typedef TYPE_1__ os_inhibit_t ;


 int LOG_WARNING ;
 int blog (int ,char*,int) ;
 int environ ;
 int posix_spawnp (int *,char*,int *,int *,char**,int ) ;
 int waitpid (int ,int*,int ) ;

__attribute__((used)) static void reset_screensaver(os_inhibit_t *info)
{
 char *argv[3] = {(char *)"xdg-screensaver", (char *)"reset", ((void*)0)};
 pid_t pid;

 int err = posix_spawnp(&pid, "xdg-screensaver", ((void*)0), &info->attr, argv,
          environ);
 if (err == 0) {
  int status;
  while (waitpid(pid, &status, 0) == -1)
   ;
 } else {
  blog(LOG_WARNING, "Failed to create xdg-screensaver: %d", err);
 }
}
