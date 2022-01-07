
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int process; int handle_err; int handle; } ;
typedef TYPE_1__ os_process_pipe_t ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 scalar_t__ GetExitCodeProcess (int ,scalar_t__*) ;
 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 int bfree (TYPE_1__*) ;

int os_process_pipe_destroy(os_process_pipe_t *pp)
{
 int ret = 0;

 if (pp) {
  DWORD code;

  CloseHandle(pp->handle);
  CloseHandle(pp->handle_err);

  WaitForSingleObject(pp->process, INFINITE);
  if (GetExitCodeProcess(pp->process, &code))
   ret = (int)code;

  CloseHandle(pp->process);
  bfree(pp);
 }

 return ret;
}
