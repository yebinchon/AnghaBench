
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t control_slot; int impl_private; int handle; } ;
typedef TYPE_2__ dsm_segment ;
struct TYPE_7__ {TYPE_1__* item; } ;
struct TYPE_5__ {int pinned; void* impl_private_pm_handle; int refcnt; } ;


 int DynamicSharedMemoryControlLock ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* dsm_control ;
 int dsm_impl_pin_segment (int ,int ,void**) ;
 int elog (int ,char*) ;

void
dsm_pin_segment(dsm_segment *seg)
{
 void *handle;







 LWLockAcquire(DynamicSharedMemoryControlLock, LW_EXCLUSIVE);
 if (dsm_control->item[seg->control_slot].pinned)
  elog(ERROR, "cannot pin a segment that is already pinned");
 dsm_impl_pin_segment(seg->handle, seg->impl_private, &handle);
 dsm_control->item[seg->control_slot].pinned = 1;
 dsm_control->item[seg->control_slot].refcnt++;
 dsm_control->item[seg->control_slot].impl_private_pm_handle = handle;
 LWLockRelease(DynamicSharedMemoryControlLock);
}
