
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int file; } ;
typedef TYPE_1__ os_process_pipe_t ;


 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int bfree (TYPE_1__*) ;
 int pclose (int ) ;

int os_process_pipe_destroy(os_process_pipe_t *pp)
{
 int ret = 0;

 if (pp) {
  int status = pclose(pp->file);
  if (WIFEXITED(status))
   ret = (int)(char)WEXITSTATUS(status);
  bfree(pp);
 }

 return ret;
}
