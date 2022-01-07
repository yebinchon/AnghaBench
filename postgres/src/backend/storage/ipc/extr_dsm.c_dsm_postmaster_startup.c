
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_6__ {scalar_t__ maxitems; scalar_t__ nitems; int magic; } ;
struct TYPE_5__ {scalar_t__ dsm_control; } ;
typedef int Size ;
typedef TYPE_1__ PGShmemHeader ;


 int Assert (int) ;
 int DEBUG2 ;
 scalar_t__ DSM_HANDLE_INVALID ;
 scalar_t__ DSM_IMPL_MMAP ;
 int DSM_OP_CREATE ;
 int ERROR ;
 int IsUnderPostmaster ;
 int MaxBackends ;
 int PG_DYNSHMEM_CONTROL_MAGIC ;
 scalar_t__ PG_DYNSHMEM_FIXED_SLOTS ;
 int PG_DYNSHMEM_SLOTS_PER_BACKEND ;
 int PointerGetDatum (TYPE_1__*) ;
 int dsm_cleanup_for_mmap () ;
 TYPE_3__* dsm_control ;
 int dsm_control_bytes_needed (scalar_t__) ;
 scalar_t__ dsm_control_handle ;
 int dsm_control_impl_private ;
 scalar_t__ dsm_control_mapped_size ;
 scalar_t__ dsm_impl_op (int ,scalar_t__,int ,int *,void**,scalar_t__*,int ) ;
 int dsm_postmaster_shutdown ;
 scalar_t__ dynamic_shared_memory_type ;
 int elog (int ,char*,scalar_t__,...) ;
 int on_shmem_exit (int ,int ) ;
 scalar_t__ random () ;

void
dsm_postmaster_startup(PGShmemHeader *shim)
{
 void *dsm_control_address = ((void*)0);
 uint32 maxitems;
 Size segsize;

 Assert(!IsUnderPostmaster);







 if (dynamic_shared_memory_type == DSM_IMPL_MMAP)
  dsm_cleanup_for_mmap();


 maxitems = PG_DYNSHMEM_FIXED_SLOTS
  + PG_DYNSHMEM_SLOTS_PER_BACKEND * MaxBackends;
 elog(DEBUG2, "dynamic shared memory system will support %u segments",
   maxitems);
 segsize = dsm_control_bytes_needed(maxitems);







 for (;;)
 {
  Assert(dsm_control_address == ((void*)0));
  Assert(dsm_control_mapped_size == 0);
  dsm_control_handle = random();
  if (dsm_control_handle == DSM_HANDLE_INVALID)
   continue;
  if (dsm_impl_op(DSM_OP_CREATE, dsm_control_handle, segsize,
      &dsm_control_impl_private, &dsm_control_address,
      &dsm_control_mapped_size, ERROR))
   break;
 }
 dsm_control = dsm_control_address;
 on_shmem_exit(dsm_postmaster_shutdown, PointerGetDatum(shim));
 elog(DEBUG2,
   "created dynamic shared memory control segment %u (%zu bytes)",
   dsm_control_handle, segsize);
 shim->dsm_control = dsm_control_handle;


 dsm_control->magic = PG_DYNSHMEM_CONTROL_MAGIC;
 dsm_control->nitems = 0;
 dsm_control->maxitems = maxitems;
}
