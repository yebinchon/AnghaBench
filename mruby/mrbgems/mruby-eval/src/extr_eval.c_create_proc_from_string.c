
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_27__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct mrb_parser_state {scalar_t__ nerr; TYPE_1__* error_buffer; } ;
struct TYPE_35__ {int irep; } ;
struct TYPE_33__ {struct REnv* env; } ;
struct RProc {TYPE_6__ body; TYPE_27__* upper; int flags; TYPE_4__ e; } ;
struct REnv {TYPE_5__* cxt; int stack; int mid; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
struct TYPE_36__ {void* on_eval; void* no_optimize; void* capture_errors; scalar_t__ lineno; } ;
typedef TYPE_7__ mrbc_context ;
typedef int mrb_value ;
struct TYPE_37__ {TYPE_5__* c; } ;
typedef TYPE_8__ mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_38__ {int argc; struct RClass* target_class; TYPE_27__* proc; struct REnv* env; int stackent; int mid; } ;
typedef TYPE_9__ mrb_callinfo ;
struct TYPE_34__ {TYPE_9__* ci; TYPE_9__* cibase; } ;
struct TYPE_32__ {TYPE_2__* irep; } ;
struct TYPE_31__ {int nlocals; } ;
struct TYPE_30__ {TYPE_3__ body; } ;
struct TYPE_29__ {int message; int lineno; } ;


 int E_ARGUMENT_ERROR ;
 int E_RUNTIME_ERROR ;
 int E_SCRIPT_ERROR ;
 int E_SYNTAX_ERROR ;
 int MRB_ENV_SET_BIDX (struct REnv*,int) ;
 int MRB_ENV_SET_STACK_LEN (struct REnv*,int ) ;
 int MRB_PROC_CFUNC_P (TYPE_27__*) ;
 int MRB_PROC_ENVSET ;
 struct RClass* MRB_PROC_TARGET_CLASS (TYPE_27__*) ;
 int MRB_TT_ENV ;
 void* TRUE ;
 int mrb_exc_new_str (TYPE_8__*,int ,int ) ;
 int mrb_exc_raise (TYPE_8__*,int ) ;
 int mrb_field_write_barrier (TYPE_8__*,struct RBasic*,struct RBasic*) ;
 int mrb_format (TYPE_8__*,char*,char const*,int ,...) ;
 struct RProc* mrb_generate_code (TYPE_8__*,struct mrb_parser_state*) ;
 int mrb_nil_p (int ) ;
 scalar_t__ mrb_obj_alloc (TYPE_8__*,int ,struct RClass*) ;
 struct mrb_parser_state* mrb_parse_nstring (TYPE_8__*,char*,scalar_t__,TYPE_7__*) ;
 int mrb_parser_free (struct mrb_parser_state*) ;
 int mrb_raise (TYPE_8__*,int ,char*) ;
 int mrbc_context_free (TYPE_8__*,TYPE_7__*) ;
 TYPE_7__* mrbc_context_new (TYPE_8__*) ;
 int mrbc_filename (TYPE_8__*,TYPE_7__*,char const*) ;
 int patch_irep (TYPE_8__*,int ,int ,int ) ;

__attribute__((used)) static struct RProc*
create_proc_from_string(mrb_state *mrb, char *s, mrb_int len, mrb_value binding, const char *file, mrb_int line)
{
  mrbc_context *cxt;
  struct mrb_parser_state *p;
  struct RProc *proc;
  struct REnv *e;
  mrb_callinfo *ci;
  struct RClass *target_class = ((void*)0);
  int bidx;

  if (!mrb_nil_p(binding)) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "Binding of eval must be nil.");
  }

  cxt = mrbc_context_new(mrb);
  cxt->lineno = (uint16_t)line;

  mrbc_filename(mrb, cxt, file ? file : "(eval)");
  cxt->capture_errors = TRUE;
  cxt->no_optimize = TRUE;
  cxt->on_eval = TRUE;

  p = mrb_parse_nstring(mrb, s, len, cxt);


  if (!p) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "Failed to create parser state.");
  }

  if (0 < p->nerr) {

    mrb_value str;

    if (file) {
      str = mrb_format(mrb, "file %s line %d: %s",
                       file,
                       p->error_buffer[0].lineno,
                       p->error_buffer[0].message);
    }
    else {
      str = mrb_format(mrb, "line %d: %s",
                       p->error_buffer[0].lineno,
                       p->error_buffer[0].message);
    }
    mrb_parser_free(p);
    mrbc_context_free(mrb, cxt);
    mrb_exc_raise(mrb, mrb_exc_new_str(mrb, E_SYNTAX_ERROR, str));
  }

  proc = mrb_generate_code(mrb, p);
  if (proc == ((void*)0)) {

    mrb_parser_free(p);
    mrbc_context_free(mrb, cxt);
    mrb_raise(mrb, E_SCRIPT_ERROR, "codegen error");
  }
  if (mrb->c->ci > mrb->c->cibase) {
    ci = &mrb->c->ci[-1];
  }
  else {
    ci = mrb->c->cibase;
  }
  if (ci->proc) {
    target_class = MRB_PROC_TARGET_CLASS(ci->proc);
  }
  if (ci->proc && !MRB_PROC_CFUNC_P(ci->proc)) {
    if (ci->env) {
      e = ci->env;
    }
    else {
      e = (struct REnv*)mrb_obj_alloc(mrb, MRB_TT_ENV,
                                      (struct RClass*)target_class);
      e->mid = ci->mid;
      e->stack = ci[1].stackent;
      e->cxt = mrb->c;
      MRB_ENV_SET_STACK_LEN(e, ci->proc->body.irep->nlocals);
      bidx = ci->argc;
      if (ci->argc < 0) bidx = 2;
      else bidx += 1;
      MRB_ENV_SET_BIDX(e, bidx);
      ci->env = e;
    }
    proc->e.env = e;
    proc->flags |= MRB_PROC_ENVSET;
    mrb_field_write_barrier(mrb, (struct RBasic*)proc, (struct RBasic*)e);
  }
  proc->upper = ci->proc;
  mrb->c->ci->target_class = target_class;
  patch_irep(mrb, proc->body.irep, 0, proc->body.irep);


  mrb_parser_free(p);
  mrbc_context_free(mrb, cxt);

  return proc;
}
