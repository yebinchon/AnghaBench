
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* control; } ;
typedef TYPE_2__ dsa_area ;
struct TYPE_5__ {size_t max_total_segment_size; } ;


 int DSA_AREA_LOCK (TYPE_2__*) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;

void
dsa_set_size_limit(dsa_area *area, size_t limit)
{
 LWLockAcquire(DSA_AREA_LOCK(area), LW_EXCLUSIVE);
 area->control->max_total_segment_size = limit;
 LWLockRelease(DSA_AREA_LOCK(area));
}
