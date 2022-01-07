
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_9__ {scalar_t__ mapped_size; scalar_t__ handle; size_t control_slot; int node; int * resowner; int * mapped_address; int impl_private; } ;
typedef TYPE_2__ dsm_segment ;
struct TYPE_10__ {size_t nitems; size_t maxitems; TYPE_1__* item; } ;
struct TYPE_8__ {int refcnt; scalar_t__ handle; int pinned; int * impl_private_pm_handle; } ;
typedef int Size ;


 int Assert (int) ;
 int DSM_CREATE_NULL_IF_MAXSEGMENTS ;
 scalar_t__ DSM_HANDLE_INVALID ;
 int DSM_OP_CREATE ;
 int DSM_OP_DESTROY ;
 int DynamicSharedMemoryControlLock ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ResourceOwnerForgetDSM (int *,TYPE_2__*) ;
 int WARNING ;
 int dlist_delete (int *) ;
 int dsm_backend_startup () ;
 TYPE_6__* dsm_control ;
 TYPE_2__* dsm_create_descriptor () ;
 scalar_t__ dsm_impl_op (int ,scalar_t__,int ,int *,int **,scalar_t__*,int ) ;
 int dsm_init_done ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (TYPE_2__*) ;
 scalar_t__ random () ;

dsm_segment *
dsm_create(Size size, int flags)
{
 dsm_segment *seg;
 uint32 i;
 uint32 nitems;


 Assert(IsUnderPostmaster);

 if (!dsm_init_done)
  dsm_backend_startup();


 seg = dsm_create_descriptor();


 for (;;)
 {
  Assert(seg->mapped_address == ((void*)0) && seg->mapped_size == 0);
  seg->handle = random();
  if (seg->handle == DSM_HANDLE_INVALID)
   continue;
  if (dsm_impl_op(DSM_OP_CREATE, seg->handle, size, &seg->impl_private,
      &seg->mapped_address, &seg->mapped_size, ERROR))
   break;
 }


 LWLockAcquire(DynamicSharedMemoryControlLock, LW_EXCLUSIVE);


 nitems = dsm_control->nitems;
 for (i = 0; i < nitems; ++i)
 {
  if (dsm_control->item[i].refcnt == 0)
  {
   dsm_control->item[i].handle = seg->handle;

   dsm_control->item[i].refcnt = 2;
   dsm_control->item[i].impl_private_pm_handle = ((void*)0);
   dsm_control->item[i].pinned = 0;
   seg->control_slot = i;
   LWLockRelease(DynamicSharedMemoryControlLock);
   return seg;
  }
 }


 if (nitems >= dsm_control->maxitems)
 {
  if ((flags & DSM_CREATE_NULL_IF_MAXSEGMENTS) != 0)
  {
   LWLockRelease(DynamicSharedMemoryControlLock);
   dsm_impl_op(DSM_OP_DESTROY, seg->handle, 0, &seg->impl_private,
      &seg->mapped_address, &seg->mapped_size, WARNING);
   if (seg->resowner != ((void*)0))
    ResourceOwnerForgetDSM(seg->resowner, seg);
   dlist_delete(&seg->node);
   pfree(seg);
   return ((void*)0);
  }
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("too many dynamic shared memory segments")));
 }


 dsm_control->item[nitems].handle = seg->handle;

 dsm_control->item[nitems].refcnt = 2;
 dsm_control->item[nitems].impl_private_pm_handle = ((void*)0);
 dsm_control->item[nitems].pinned = 0;
 seg->control_slot = nitems;
 dsm_control->nitems++;
 LWLockRelease(DynamicSharedMemoryControlLock);

 return seg;
}
