
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int wcnt; int print_no; int dbg; int * words; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int dbgcmd_state ;


 int DBGST_PROMPT ;
 int RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 int fwrite (int ,int ,int,int ) ;
 int mrb_debug_eval (int *,int ,int ,int ,int *,int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_str_cat_cstr (int *,int ,int ) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_str_new_cstr (int *,int *) ;
 int printf (char*,unsigned long) ;
 int putc (char,int ) ;
 int puts (char*) ;
 int stdout ;

dbgcmd_state
dbgcmd_print(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_value expr;
  mrb_value result;
  uint8_t wcnt;
  int ai;

  if (mrdb->wcnt <= 1) {
    puts("Parameter not specified.");
    return DBGST_PROMPT;
  }

  ai = mrb_gc_arena_save(mrb);


  expr = mrb_str_new_cstr(mrb, ((void*)0));
  for (wcnt=1; wcnt<mrdb->wcnt; wcnt++) {
    expr = mrb_str_cat_lit(mrb, expr, " ");
    expr = mrb_str_cat_cstr(mrb, expr, mrdb->words[wcnt]);
  }

  result = mrb_debug_eval(mrb, mrdb->dbg, RSTRING_PTR(expr), RSTRING_LEN(expr), ((void*)0), 0);


  printf("$%lu = ", (unsigned long)mrdb->print_no++);
  fwrite(RSTRING_PTR(result), RSTRING_LEN(result), 1, stdout);
  putc('\n', stdout);

  if (mrdb->print_no == 0) {
    mrdb->print_no = 1;
  }

  mrb_gc_arena_restore(mrb, ai);

  return DBGST_PROMPT;
}
