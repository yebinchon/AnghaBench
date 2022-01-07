
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct RBasic {int dummy; } ;
struct TYPE_10__ {scalar_t__ exc; int root_c; int c; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_11__ {int arena_idx; int * gray_list; int * atomic_gray_list; struct RBasic** arena; } ;
typedef TYPE_2__ mrb_gc ;


 int gc_mark_gray_list (TYPE_1__*,TYPE_2__*) ;
 int mark_context (TYPE_1__*,int ) ;
 int mrb_assert (int ) ;
 int mrb_gc_mark (TYPE_1__*,struct RBasic*) ;
 int mrb_gc_mark_gv (TYPE_1__*) ;

__attribute__((used)) static void
final_marking_phase(mrb_state *mrb, mrb_gc *gc)
{
  int i, e;


  for (i=0,e=gc->arena_idx; i<e; i++) {
    mrb_gc_mark(mrb, gc->arena[i]);
  }
  mrb_gc_mark_gv(mrb);
  mark_context(mrb, mrb->c);
  mark_context(mrb, mrb->root_c);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->exc);
  gc_mark_gray_list(mrb, gc);
  mrb_assert(gc->gray_list == ((void*)0));
  gc->gray_list = gc->atomic_gray_list;
  gc->atomic_gray_list = ((void*)0);
  gc_mark_gray_list(mrb, gc);
  mrb_assert(gc->gray_list == ((void*)0));
}
