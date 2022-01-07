
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int dsm_handle ;
struct TYPE_5__ {size_t nitems; TYPE_1__* item; } ;
typedef TYPE_2__ dsm_control_header ;
struct TYPE_4__ {size_t refcnt; int handle; } ;
typedef int Size ;


 int DEBUG1 ;
 int DEBUG2 ;
 int DSM_OP_ATTACH ;
 int DSM_OP_DESTROY ;
 int DSM_OP_DETACH ;
 int LOG ;
 int dsm_control_segment_sane (TYPE_2__*,int ) ;
 int dsm_impl_op (int ,int ,int ,void**,void**,int *,int ) ;
 int elog (int ,char*,int ,...) ;

void
dsm_cleanup_using_control_segment(dsm_handle old_control_handle)
{
 void *mapped_address = ((void*)0);
 void *junk_mapped_address = ((void*)0);
 void *impl_private = ((void*)0);
 void *junk_impl_private = ((void*)0);
 Size mapped_size = 0;
 Size junk_mapped_size = 0;
 uint32 nitems;
 uint32 i;
 dsm_control_header *old_control;







 if (!dsm_impl_op(DSM_OP_ATTACH, old_control_handle, 0, &impl_private,
      &mapped_address, &mapped_size, DEBUG1))
  return;





 old_control = (dsm_control_header *) mapped_address;
 if (!dsm_control_segment_sane(old_control, mapped_size))
 {
  dsm_impl_op(DSM_OP_DETACH, old_control_handle, 0, &impl_private,
     &mapped_address, &mapped_size, LOG);
  return;
 }





 nitems = old_control->nitems;
 for (i = 0; i < nitems; ++i)
 {
  dsm_handle handle;
  uint32 refcnt;


  refcnt = old_control->item[i].refcnt;
  if (refcnt == 0)
   continue;


  handle = old_control->item[i].handle;
  elog(DEBUG2, "cleaning up orphaned dynamic shared memory with ID %u (reference count %u)",
    handle, refcnt);


  dsm_impl_op(DSM_OP_DESTROY, handle, 0, &junk_impl_private,
     &junk_mapped_address, &junk_mapped_size, LOG);
 }


 elog(DEBUG2,
   "cleaning up dynamic shared memory control segment with ID %u",
   old_control_handle);
 dsm_impl_op(DSM_OP_DESTROY, old_control_handle, 0, &impl_private,
    &mapped_address, &mapped_size, LOG);
}
