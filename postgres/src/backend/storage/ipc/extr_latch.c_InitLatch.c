
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_set; int is_shared; int * event; scalar_t__ owner_pid; } ;
typedef TYPE_1__ Latch ;


 int Assert (int) ;
 int * CreateEvent (int *,int ,int ,int *) ;
 int ERROR ;
 int FALSE ;
 int GetLastError () ;
 scalar_t__ MyProcPid ;
 int TRUE ;
 int elog (int ,char*,int ) ;
 scalar_t__ selfpipe_owner_pid ;
 scalar_t__ selfpipe_readfd ;

void
InitLatch(Latch *latch)
{
 latch->is_set = 0;
 latch->owner_pid = MyProcPid;
 latch->is_shared = 0;



 Assert(selfpipe_readfd >= 0 && selfpipe_owner_pid == MyProcPid);





}
