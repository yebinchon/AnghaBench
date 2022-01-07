
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tranche; } ;
typedef TYPE_1__ LWLock ;


 int PG_WAIT_LWLOCK ;
 int pgstat_report_wait_start (int) ;

__attribute__((used)) static inline void
LWLockReportWaitStart(LWLock *lock)
{
 pgstat_report_wait_start(PG_WAIT_LWLOCK | lock->tranche);
}
