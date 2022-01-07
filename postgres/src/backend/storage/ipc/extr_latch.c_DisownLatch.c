
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_shared; scalar_t__ owner_pid; } ;
typedef TYPE_1__ Latch ;


 int Assert (int) ;
 scalar_t__ MyProcPid ;

void
DisownLatch(Latch *latch)
{
 Assert(latch->is_shared);
 Assert(latch->owner_pid == MyProcPid);

 latch->owner_pid = 0;
}
