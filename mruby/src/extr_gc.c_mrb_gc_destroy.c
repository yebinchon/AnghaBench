
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_4__ {int arena; } ;
typedef TYPE_1__ mrb_gc ;


 int free_heap (int *,TYPE_1__*) ;
 int mrb_free (int *,int ) ;

void
mrb_gc_destroy(mrb_state *mrb, mrb_gc *gc)
{
  free_heap(mrb, gc);

  mrb_free(mrb, gc->arena);

}
