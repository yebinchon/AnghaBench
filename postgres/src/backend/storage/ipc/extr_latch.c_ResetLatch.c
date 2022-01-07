
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ owner_pid; int is_set; } ;
typedef TYPE_1__ Latch ;


 int Assert (int) ;
 scalar_t__ MyProcPid ;
 int pg_memory_barrier () ;

void
ResetLatch(Latch *latch)
{

 Assert(latch->owner_pid == MyProcPid);

 latch->is_set = 0;







 pg_memory_barrier();
}
