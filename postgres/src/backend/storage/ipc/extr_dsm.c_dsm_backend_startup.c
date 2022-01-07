
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int DSM_OP_ATTACH ;
 int DSM_OP_DETACH ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int FATAL ;
 int WARNING ;
 void* dsm_control ;
 scalar_t__ dsm_control_handle ;
 int dsm_control_impl_private ;
 int dsm_control_mapped_size ;
 int dsm_control_segment_sane (void*,int ) ;
 int dsm_impl_op (int ,scalar_t__,int ,int *,void**,int *,int ) ;
 int dsm_init_done ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
dsm_backend_startup(void)
{
 dsm_init_done = 1;
}
