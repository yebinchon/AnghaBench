
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lineno; void* capture_errors; void* no_exec; } ;
typedef TYPE_1__ mrbc_context ;
typedef int mrb_state ;
struct TYPE_9__ {int prvline; scalar_t__ prvfile; } ;
typedef TYPE_2__ mrb_debug_context ;


 void* TRUE ;
 int mrb_load_nstring_cxt (int *,char const*,size_t,TYPE_1__*) ;
 int mrbc_context_free (int *,TYPE_1__*) ;
 TYPE_1__* mrbc_context_new (int *) ;
 int mrbc_filename (int *,TYPE_1__*,char const*) ;

__attribute__((used)) static void
mrdb_check_syntax(mrb_state *mrb, mrb_debug_context *dbg, const char *expr, size_t len)
{
  mrbc_context *c;

  c = mrbc_context_new(mrb);
  c->no_exec = TRUE;
  c->capture_errors = TRUE;
  mrbc_filename(mrb, c, (const char*)dbg->prvfile);
  c->lineno = dbg->prvline;


  mrb_load_nstring_cxt(mrb, expr, len, c);

  mrbc_context_free(mrb, c);
}
