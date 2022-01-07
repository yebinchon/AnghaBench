
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_shared; scalar_t__ owner_pid; } ;
typedef TYPE_1__ Latch ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ MyProcPid ;
 int elog (int ,char*) ;
 scalar_t__ selfpipe_owner_pid ;
 scalar_t__ selfpipe_readfd ;

void
OwnLatch(Latch *latch)
{

 Assert(latch->is_shared);



 Assert(selfpipe_readfd >= 0 && selfpipe_owner_pid == MyProcPid);


 if (latch->owner_pid != 0)
  elog(ERROR, "latch already owned");

 latch->owner_pid = MyProcPid;
}
