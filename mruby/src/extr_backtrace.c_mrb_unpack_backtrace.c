
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct backtrace_location {scalar_t__ method_id; int lineno; int * filename; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
struct TYPE_2__ {scalar_t__ flags; } ;


 TYPE_1__* RDATA (int ) ;
 int bt_type ;
 scalar_t__ mrb_array_p (int ) ;
 int mrb_ary_new_capa (int *,size_t) ;
 int mrb_ary_push (int *,int ,int ) ;
 scalar_t__ mrb_data_check_get_ptr (int *,int ,int *) ;
 int mrb_format (int *,char*,int *,int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_str_cat_cstr (int *,int ,int ) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_sym_name (int *,scalar_t__) ;

mrb_value
mrb_unpack_backtrace(mrb_state *mrb, mrb_value backtrace)
{
  const struct backtrace_location *bt;
  mrb_int n, i;
  int ai;

  if (mrb_nil_p(backtrace)) {
  empty_backtrace:
    return mrb_ary_new_capa(mrb, 0);
  }
  if (mrb_array_p(backtrace)) return backtrace;
  bt = (struct backtrace_location*)mrb_data_check_get_ptr(mrb, backtrace, &bt_type);
  if (bt == ((void*)0)) goto empty_backtrace;
  n = (mrb_int)RDATA(backtrace)->flags;
  backtrace = mrb_ary_new_capa(mrb, n);
  ai = mrb_gc_arena_save(mrb);
  for (i = 0; i < n; i++) {
    const struct backtrace_location *entry = &bt[i];
    mrb_value btline;

    if (entry->filename == ((void*)0)) continue;
    btline = mrb_format(mrb, "%s:%d", entry->filename, entry->lineno);
    if (entry->method_id != 0) {
      mrb_str_cat_lit(mrb, btline, ":in ");
      mrb_str_cat_cstr(mrb, btline, mrb_sym_name(mrb, entry->method_id));
    }
    mrb_ary_push(mrb, backtrace, btline);
    mrb_gc_arena_restore(mrb, ai);
  }

  return backtrace;
}
