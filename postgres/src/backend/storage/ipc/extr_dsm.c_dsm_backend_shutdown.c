
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlist_head_element (int,int ,int *) ;
 int dlist_is_empty (int *) ;
 int dsm_detach (int) ;
 int dsm_segment ;
 int dsm_segment_list ;
 int node ;
 int seg ;

void
dsm_backend_shutdown(void)
{
 while (!dlist_is_empty(&dsm_segment_list))
 {
  dsm_segment *seg;

  seg = dlist_head_element(dsm_segment, node, &dsm_segment_list);
  dsm_detach(seg);
 }
}
