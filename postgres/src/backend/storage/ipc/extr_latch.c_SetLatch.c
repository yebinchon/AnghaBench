
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {int is_set; scalar_t__ owner_pid; scalar_t__ event; } ;
typedef TYPE_1__ Latch ;
typedef scalar_t__ HANDLE ;


 scalar_t__ MyProcPid ;
 int SIGUSR1 ;
 int SetEvent (scalar_t__) ;
 int kill (scalar_t__,int ) ;
 int pg_memory_barrier () ;
 int sendSelfPipeByte () ;
 scalar_t__ waiting ;

void
SetLatch(Latch *latch)
{

 pid_t owner_pid;
 pg_memory_barrier();


 if (latch->is_set)
  return;

 latch->is_set = 1;
 owner_pid = latch->owner_pid;
 if (owner_pid == 0)
  return;
 else if (owner_pid == MyProcPid)
 {
  if (waiting)
   sendSelfPipeByte();
 }
 else
  kill(owner_pid, SIGUSR1);
}
