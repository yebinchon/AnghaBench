
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct RBasic {int dummy; } ;
struct TYPE_9__ {scalar_t__ c; scalar_t__ root_c; scalar_t__ arena_err; scalar_t__ stack_err; scalar_t__ nomem_err; scalar_t__ exc; scalar_t__ top_self; scalar_t__ eStandardError_class; scalar_t__ eException_class; scalar_t__ kernel_module; scalar_t__ symbol_class; scalar_t__ nil_class; scalar_t__ false_class; scalar_t__ true_class; scalar_t__ fixnum_class; scalar_t__ float_class; scalar_t__ range_class; scalar_t__ hash_class; scalar_t__ array_class; scalar_t__ string_class; scalar_t__ proc_class; scalar_t__ module_class; scalar_t__ class_class; scalar_t__ object_class; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_10__ {int arena_idx; struct RBasic** arena; int * atomic_gray_list; int * gray_list; } ;
typedef TYPE_2__ mrb_gc ;


 int is_minor_gc (TYPE_2__*) ;
 int mark_context (TYPE_1__*,scalar_t__) ;
 int mrb_gc_mark (TYPE_1__*,struct RBasic*) ;
 int mrb_gc_mark_gv (TYPE_1__*) ;

__attribute__((used)) static void
root_scan_phase(mrb_state *mrb, mrb_gc *gc)
{
  int i, e;

  if (!is_minor_gc(gc)) {
    gc->gray_list = ((void*)0);
    gc->atomic_gray_list = ((void*)0);
  }

  mrb_gc_mark_gv(mrb);

  for (i=0,e=gc->arena_idx; i<e; i++) {
    mrb_gc_mark(mrb, gc->arena[i]);
  }

  mrb_gc_mark(mrb, (struct RBasic*)mrb->object_class);


  mrb_gc_mark(mrb, (struct RBasic*)mrb->class_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->module_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->proc_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->string_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->array_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->hash_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->range_class);


  mrb_gc_mark(mrb, (struct RBasic*)mrb->float_class);

  mrb_gc_mark(mrb, (struct RBasic*)mrb->fixnum_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->true_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->false_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->nil_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->symbol_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->kernel_module);

  mrb_gc_mark(mrb, (struct RBasic*)mrb->eException_class);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->eStandardError_class);


  mrb_gc_mark(mrb, (struct RBasic*)mrb->top_self);

  mrb_gc_mark(mrb, (struct RBasic*)mrb->exc);

  mrb_gc_mark(mrb, (struct RBasic*)mrb->nomem_err);
  mrb_gc_mark(mrb, (struct RBasic*)mrb->stack_err);




  mark_context(mrb, mrb->c);
  if (mrb->root_c != mrb->c) {
    mark_context(mrb, mrb->root_c);
  }
}
