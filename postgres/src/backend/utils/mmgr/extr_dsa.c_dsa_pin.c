
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* control; } ;
typedef TYPE_2__ dsa_area ;
struct TYPE_5__ {int pinned; int refcnt; } ;


 int DSA_AREA_LOCK (TYPE_2__*) ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int elog (int ,char*) ;

void
dsa_pin(dsa_area *area)
{
 LWLockAcquire(DSA_AREA_LOCK(area), LW_EXCLUSIVE);
 if (area->control->pinned)
 {
  LWLockRelease(DSA_AREA_LOCK(area));
  elog(ERROR, "dsa_area already pinned");
 }
 area->control->pinned = 1;
 ++area->control->refcnt;
 LWLockRelease(DSA_AREA_LOCK(area));
}
