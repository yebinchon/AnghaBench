
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int roleId; } ;
typedef TYPE_1__ PGPROC ;


 TYPE_1__* BackendPidGetProc (int) ;
 int DEFAULT_ROLE_SIGNAL_BACKENDID ;
 int GetUserId () ;
 int SIGNAL_BACKEND_ERROR ;
 int SIGNAL_BACKEND_NOPERMISSION ;
 int SIGNAL_BACKEND_NOSUPERUSER ;
 int SIGNAL_BACKEND_SUCCESS ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*,int) ;
 int has_privs_of_role (int ,int ) ;
 scalar_t__ kill (int,int) ;
 int superuser () ;
 scalar_t__ superuser_arg (int ) ;

__attribute__((used)) static int
pg_signal_backend(int pid, int sig)
{
 PGPROC *proc = BackendPidGetProc(pid);
 if (proc == ((void*)0))
 {




  ereport(WARNING,
    (errmsg("PID %d is not a PostgreSQL server process", pid)));
  return SIGNAL_BACKEND_ERROR;
 }


 if (superuser_arg(proc->roleId) && !superuser())
  return SIGNAL_BACKEND_NOSUPERUSER;


 if (!has_privs_of_role(GetUserId(), proc->roleId) &&
  !has_privs_of_role(GetUserId(), DEFAULT_ROLE_SIGNAL_BACKENDID))
  return SIGNAL_BACKEND_NOPERMISSION;
 if (kill(pid, sig))

 {

  ereport(WARNING,
    (errmsg("could not send signal to process %d: %m", pid)));
  return SIGNAL_BACKEND_ERROR;
 }
 return SIGNAL_BACKEND_SUCCESS;
}
