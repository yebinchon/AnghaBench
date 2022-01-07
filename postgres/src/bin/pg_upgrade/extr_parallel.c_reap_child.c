
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {int jobs; } ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int GetExitCodeThread (int ,scalar_t__*) ;
 int INFINITE ;
 int WAIT_FAILED ;
 scalar_t__ WAIT_OBJECT_0 ;
 int WAIT_TIMEOUT ;
 int WNOHANG ;
 int WaitForMultipleObjects (int,int *,int,int ) ;
 void** cur_thread_args ;
 int errno ;
 int parallel_jobs ;
 int pg_fatal (char*,int) ;
 int strerror (int ) ;
 int * thread_handles ;
 TYPE_1__ user_opts ;
 scalar_t__ waitpid (int,int*,int ) ;

bool
reap_child(bool wait_for_child)
{

 int work_status;
 pid_t child;





 if (user_opts.jobs <= 1 || parallel_jobs == 0)
  return 0;


 child = waitpid(-1, &work_status, wait_for_child ? 0 : WNOHANG);
 if (child == (pid_t) -1)
  pg_fatal("waitpid() failed: %s\n", strerror(errno));
 if (child == 0)
  return 0;
 if (work_status != 0)
  pg_fatal("child process exited abnormally: status %d\n", work_status);
 parallel_jobs--;

 return 1;
}
