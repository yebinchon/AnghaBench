
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSM_OP_DETACH ;
 int ERROR ;
 int dlist_head_element (int,int ,int *) ;
 int dlist_is_empty (int *) ;
 void* dsm_control ;
 int dsm_control_handle ;
 int dsm_control_impl_private ;
 int dsm_control_mapped_size ;
 int dsm_detach (int) ;
 int dsm_impl_op (int ,int ,int ,int *,void**,int *,int ) ;
 int dsm_segment ;
 int dsm_segment_list ;
 int node ;
 int seg ;

void
dsm_detach_all(void)
{
 void *control_address = dsm_control;

 while (!dlist_is_empty(&dsm_segment_list))
 {
  dsm_segment *seg;

  seg = dlist_head_element(dsm_segment, node, &dsm_segment_list);
  dsm_detach(seg);
 }

 if (control_address != ((void*)0))
  dsm_impl_op(DSM_OP_DETACH, dsm_control_handle, 0,
     &dsm_control_impl_private, &control_address,
     &dsm_control_mapped_size, ERROR);
}
