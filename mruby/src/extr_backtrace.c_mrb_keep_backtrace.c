
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_intern_lit (int *,char*) ;
 scalar_t__ mrb_iv_defined (int *,int ,int ) ;
 int mrb_iv_set (int *,int ,int ,int ) ;
 int packed_backtrace (int *) ;

void
mrb_keep_backtrace(mrb_state *mrb, mrb_value exc)
{
  mrb_sym sym = mrb_intern_lit(mrb, "backtrace");
  mrb_value backtrace;
  int ai;

  if (mrb_iv_defined(mrb, exc, sym)) return;
  ai = mrb_gc_arena_save(mrb);
  backtrace = packed_backtrace(mrb);
  mrb_iv_set(mrb, exc, sym, backtrace);
  mrb_gc_arena_restore(mrb, ai);
}
