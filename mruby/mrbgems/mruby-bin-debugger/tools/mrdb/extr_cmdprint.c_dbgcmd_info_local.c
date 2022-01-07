
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int print_no; int dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int dbgcmd_state ;


 int DBGST_PROMPT ;
 int RSTRING_PTR (int ) ;
 int mrb_debug_eval (int *,int ,char*,int ,int *,int) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int printf (char*,unsigned long,int ) ;

dbgcmd_state
dbgcmd_info_local(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_value result;
  mrb_value s;
  int ai;

  ai = mrb_gc_arena_save(mrb);

  result = mrb_debug_eval(mrb, mrdb->dbg, "local_variables", 0, ((void*)0), 1);

  s = mrb_str_cat_lit(mrb, result, "\0");
  printf("$%lu = %s\n", (unsigned long)mrdb->print_no++, RSTRING_PTR(s));

  if (mrdb->print_no == 0) {
    mrdb->print_no = 1;
  }

  mrb_gc_arena_restore(mrb, ai);

  return DBGST_PROMPT;
}
