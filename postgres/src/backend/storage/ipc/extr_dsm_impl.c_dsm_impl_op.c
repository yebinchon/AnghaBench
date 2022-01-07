
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dsm_op ;
typedef int dsm_handle ;
typedef scalar_t__ Size ;


 int Assert (int) ;




 scalar_t__ DSM_OP_ATTACH ;
 scalar_t__ DSM_OP_CREATE ;
 int ERROR ;
 int dsm_impl_mmap (scalar_t__,int ,scalar_t__,void**,void**,scalar_t__*,int) ;
 int dsm_impl_posix (scalar_t__,int ,scalar_t__,void**,void**,scalar_t__*,int) ;
 int dsm_impl_sysv (scalar_t__,int ,scalar_t__,void**,void**,scalar_t__*,int) ;
 int dsm_impl_windows (scalar_t__,int ,scalar_t__,void**,void**,scalar_t__*,int) ;
 int dynamic_shared_memory_type ;
 int elog (int ,char*,int) ;

bool
dsm_impl_op(dsm_op op, dsm_handle handle, Size request_size,
   void **impl_private, void **mapped_address, Size *mapped_size,
   int elevel)
{
 Assert(op == DSM_OP_CREATE || request_size == 0);
 Assert((op != DSM_OP_CREATE && op != DSM_OP_ATTACH) ||
     (*mapped_address == ((void*)0) && *mapped_size == 0));

 switch (dynamic_shared_memory_type)
 {
  default:
   elog(ERROR, "unexpected dynamic shared memory type: %d",
     dynamic_shared_memory_type);
   return 0;
 }
}
