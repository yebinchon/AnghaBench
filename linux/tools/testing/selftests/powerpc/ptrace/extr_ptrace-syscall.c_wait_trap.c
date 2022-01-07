
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_pid; scalar_t__ si_code; } ;
typedef TYPE_1__ siginfo_t ;
typedef scalar_t__ pid_t ;


 scalar_t__ CLD_TRAPPED ;
 int P_PID ;
 int WEXITED ;
 int WSTOPPED ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 scalar_t__ waitid (int ,scalar_t__,TYPE_1__*,int) ;

__attribute__((used)) static void wait_trap(pid_t chld)
{
 siginfo_t si;

 if (waitid(P_PID, chld, &si, WEXITED|WSTOPPED) != 0)
  err(1, "waitid");
 if (si.si_pid != chld)
  errx(1, "got unexpected pid in event\n");
 if (si.si_code != CLD_TRAPPED)
  errx(1, "got unexpected event type %d\n", si.si_code);
}
