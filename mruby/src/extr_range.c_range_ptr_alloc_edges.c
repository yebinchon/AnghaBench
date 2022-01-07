
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RRange {int * edges; } ;
typedef int mrb_state ;
typedef int mrb_range_edges ;


 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static void
range_ptr_alloc_edges(mrb_state *mrb, struct RRange *r)
{

  r->edges = (mrb_range_edges *)mrb_malloc(mrb, sizeof(mrb_range_edges));

}
