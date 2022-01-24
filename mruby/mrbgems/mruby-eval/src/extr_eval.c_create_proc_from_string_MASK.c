#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_27__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct mrb_parser_state {scalar_t__ nerr; TYPE_1__* error_buffer; } ;
struct TYPE_35__ {int /*<<< orphan*/  irep; } ;
struct TYPE_33__ {struct REnv* env; } ;
struct RProc {TYPE_6__ body; TYPE_27__* upper; int /*<<< orphan*/  flags; TYPE_4__ e; } ;
struct REnv {TYPE_5__* cxt; int /*<<< orphan*/  stack; int /*<<< orphan*/  mid; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
struct TYPE_36__ {void* on_eval; void* no_optimize; void* capture_errors; scalar_t__ lineno; } ;
typedef  TYPE_7__ mrbc_context ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_37__ {TYPE_5__* c; } ;
typedef  TYPE_8__ mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_38__ {int argc; struct RClass* target_class; TYPE_27__* proc; struct REnv* env; int /*<<< orphan*/  stackent; int /*<<< orphan*/  mid; } ;
typedef  TYPE_9__ mrb_callinfo ;
struct TYPE_34__ {TYPE_9__* ci; TYPE_9__* cibase; } ;
struct TYPE_32__ {TYPE_2__* irep; } ;
struct TYPE_31__ {int /*<<< orphan*/  nlocals; } ;
struct TYPE_30__ {TYPE_3__ body; } ;
struct TYPE_29__ {int /*<<< orphan*/  message; int /*<<< orphan*/  lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  E_SCRIPT_ERROR ; 
 int /*<<< orphan*/  E_SYNTAX_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct REnv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct REnv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_27__*) ; 
 int /*<<< orphan*/  MRB_PROC_ENVSET ; 
 struct RClass* FUNC3 (TYPE_27__*) ; 
 int /*<<< orphan*/  MRB_TT_ENV ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,struct RBasic*,struct RBasic*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,char*,char const*,int /*<<< orphan*/ ,...) ; 
 struct RProc* FUNC8 (TYPE_8__*,struct mrb_parser_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_8__*,int /*<<< orphan*/ ,struct RClass*) ; 
 struct mrb_parser_state* FUNC11 (TYPE_8__*,char*,scalar_t__,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mrb_parser_state*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,TYPE_7__*) ; 
 TYPE_7__* FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*,TYPE_7__*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct RProc*
FUNC18(mrb_state *mrb, char *s, mrb_int len, mrb_value binding, const char *file, mrb_int line)
{
  mrbc_context *cxt;
  struct mrb_parser_state *p;
  struct RProc *proc;
  struct REnv *e;
  mrb_callinfo *ci; /* callinfo of eval caller */
  struct RClass *target_class = NULL;
  int bidx;

  if (!FUNC9(binding)) {
    FUNC13(mrb, E_ARGUMENT_ERROR, "Binding of eval must be nil.");
  }

  cxt = FUNC15(mrb);
  cxt->lineno = (uint16_t)line;

  FUNC16(mrb, cxt, file ? file : "(eval)");
  cxt->capture_errors = TRUE;
  cxt->no_optimize = TRUE;
  cxt->on_eval = TRUE;

  p = FUNC11(mrb, s, len, cxt);

  /* only occur when memory ran out */
  if (!p) {
    FUNC13(mrb, E_RUNTIME_ERROR, "Failed to create parser state.");
  }

  if (0 < p->nerr) {
    /* parse error */
    mrb_value str;

    if (file) {
      str = FUNC7(mrb, "file %s line %d: %s",
                       file,
                       p->error_buffer[0].lineno,
                       p->error_buffer[0].message);
    }
    else {
      str = FUNC7(mrb, "line %d: %s",
                       p->error_buffer[0].lineno,
                       p->error_buffer[0].message);
    }
    FUNC12(p);
    FUNC14(mrb, cxt);
    FUNC5(mrb, FUNC4(mrb, E_SYNTAX_ERROR, str));
  }

  proc = FUNC8(mrb, p);
  if (proc == NULL) {
    /* codegen error */
    FUNC12(p);
    FUNC14(mrb, cxt);
    FUNC13(mrb, E_SCRIPT_ERROR, "codegen error");
  }
  if (mrb->c->ci > mrb->c->cibase) {
    ci = &mrb->c->ci[-1];
  }
  else {
    ci = mrb->c->cibase;
  }
  if (ci->proc) {
    target_class = FUNC3(ci->proc);
  }
  if (ci->proc && !FUNC2(ci->proc)) {
    if (ci->env) {
      e = ci->env;
    }
    else {
      e = (struct REnv*)FUNC10(mrb, MRB_TT_ENV,
                                      (struct RClass*)target_class);
      e->mid = ci->mid;
      e->stack = ci[1].stackent;
      e->cxt = mrb->c;
      FUNC1(e, ci->proc->body.irep->nlocals);
      bidx = ci->argc;
      if (ci->argc < 0) bidx = 2;
      else bidx += 1;
      FUNC0(e, bidx);
      ci->env = e;
    }
    proc->e.env = e;
    proc->flags |= MRB_PROC_ENVSET;
    FUNC6(mrb, (struct RBasic*)proc, (struct RBasic*)e);
  }
  proc->upper = ci->proc;
  mrb->c->ci->target_class = target_class;
  FUNC17(mrb, proc->body.irep, 0, proc->body.irep);
  /* mrb_codedump_all(mrb, proc); */

  FUNC12(p);
  FUNC14(mrb, cxt);

  return proc;
}