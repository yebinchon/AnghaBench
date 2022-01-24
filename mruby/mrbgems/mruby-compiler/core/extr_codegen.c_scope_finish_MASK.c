#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mrb_value ;
typedef  TYPE_1__* mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_11__ {int ilen; int plen; int slen; int rlen; int nlocals; int /*<<< orphan*/  nregs; int /*<<< orphan*/  debug_info; struct TYPE_11__** reps; struct TYPE_11__** syms; struct TYPE_11__** pool; int /*<<< orphan*/ * iseq; scalar_t__ flags; } ;
typedef  TYPE_1__ mrb_irep ;
typedef  int /*<<< orphan*/  mrb_code ;
struct TYPE_12__ {int nlocals; int pc; int /*<<< orphan*/  mpool; int /*<<< orphan*/  ai; int /*<<< orphan*/  nregs; int /*<<< orphan*/  lines; int /*<<< orphan*/ * mrb; int /*<<< orphan*/  debug_start_pos; TYPE_1__* irep; int /*<<< orphan*/  filename_index; int /*<<< orphan*/  parser; scalar_t__ filename_sym; TYPE_1__** iseq; } ;
typedef  TYPE_4__ codegen_scope ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(codegen_scope *s)
{
  mrb_state *mrb = s->mrb;
  mrb_irep *irep = s->irep;

  if (s->nlocals >= 0x3ff) {
    FUNC0(s, "too many local variables");
  }
  irep->flags = 0;
  if (s->iseq) {
    irep->iseq = (mrb_code *)FUNC1(s, s->iseq, sizeof(mrb_code)*s->pc);
    irep->ilen = s->pc;
  }
  irep->pool = (mrb_value*)FUNC1(s, irep->pool, sizeof(mrb_value)*irep->plen);
  irep->syms = (mrb_sym*)FUNC1(s, irep->syms, sizeof(mrb_sym)*irep->slen);
  irep->reps = (mrb_irep**)FUNC1(s, irep->reps, sizeof(mrb_irep*)*irep->rlen);
  if (s->filename_sym) {
    mrb_sym fname = FUNC5(s->parser, s->filename_index);
    const char *filename = FUNC7(s->mrb, fname, NULL);

    FUNC2(s->mrb, s->irep->debug_info,
                               filename, s->lines, s->debug_start_pos, s->pc);
  }
  FUNC3(s->mrb, s->lines);

  irep->nlocals = s->nlocals;
  irep->nregs = s->nregs;

  FUNC4(mrb, s->ai);
  FUNC6(s->mpool);
}