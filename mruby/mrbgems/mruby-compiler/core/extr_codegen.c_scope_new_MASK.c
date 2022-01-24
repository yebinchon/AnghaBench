#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct mrb_locals {scalar_t__ r; scalar_t__ name; } ;
struct TYPE_14__ {struct TYPE_14__* cdr; } ;
typedef  TYPE_1__ node ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_pool ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  int /*<<< orphan*/  mrb_code ;
struct TYPE_15__ {int ainfo; int rcapa; int icapa; int pcapa; int scapa; int sp; int nlocals; scalar_t__ rlev; int /*<<< orphan*/  filename_index; int /*<<< orphan*/  parser; TYPE_7__* irep; scalar_t__ filename_sym; scalar_t__ debug_start_pos; int /*<<< orphan*/  lineno; int /*<<< orphan*/ * lines; int /*<<< orphan*/  ai; TYPE_1__* lv; int /*<<< orphan*/ * iseq; scalar_t__ mscope; struct TYPE_15__* prev; int /*<<< orphan*/ * mpool; int /*<<< orphan*/ * mrb; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ codegen_scope ;
struct TYPE_16__ {int /*<<< orphan*/ * debug_info; struct mrb_locals* lv; scalar_t__ slen; int /*<<< orphan*/ * syms; scalar_t__ plen; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * iseq; int /*<<< orphan*/ ** reps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_7__*) ; 

__attribute__((used)) static codegen_scope*
FUNC12(mrb_state *mrb, codegen_scope *prev, node *lv)
{
  static const codegen_scope codegen_scope_zero = { 0 };
  mrb_pool *pool = FUNC9(mrb);
  codegen_scope *p = (codegen_scope *)FUNC8(pool, sizeof(codegen_scope));

  if (!p) {
    if (prev)
      FUNC0(prev, "unexpected scope");
    return NULL;
  }
  *p = codegen_scope_zero;
  p->mrb = mrb;
  p->mpool = pool;
  if (!prev) return p;
  p->prev = prev;
  p->ainfo = -1;
  p->mscope = 0;

  p->irep = FUNC3(mrb);
  FUNC11(prev, p->irep);

  p->rcapa = 8;
  p->irep->reps = (mrb_irep**)FUNC7(mrb, sizeof(mrb_irep*)*p->rcapa);

  p->icapa = 1024;
  p->iseq = (mrb_code*)FUNC7(mrb, sizeof(mrb_code)*p->icapa);
  p->irep->iseq = NULL;

  p->pcapa = 32;
  p->irep->pool = (mrb_value*)FUNC7(mrb, sizeof(mrb_value)*p->pcapa);
  p->irep->plen = 0;

  p->scapa = 256;
  p->irep->syms = (mrb_sym*)FUNC7(mrb, sizeof(mrb_sym)*p->scapa);
  p->irep->slen = 0;

  p->lv = lv;
  p->sp += FUNC10(lv)+1;        /* add self */
  p->nlocals = p->sp;
  if (lv) {
    node *n = lv;
    size_t i = 0;

    p->irep->lv = (struct mrb_locals*)FUNC7(mrb, sizeof(struct mrb_locals) * (p->nlocals - 1));
    for (i=0, n=lv; n; i++,n=n->cdr) {
      p->irep->lv[i].name = FUNC2(n);
      if (FUNC2(n)) {
        p->irep->lv[i].r = FUNC1(p, FUNC2(n));
      }
      else {
        p->irep->lv[i].r = 0;
      }
    }
    FUNC4(i + 1 == p->nlocals);
  }
  p->ai = FUNC6(mrb);

  p->filename_sym = prev->filename_sym;
  if (p->filename_sym) {
    p->lines = (uint16_t*)FUNC7(mrb, sizeof(short)*p->icapa);
  }
  p->lineno = prev->lineno;

  /* debug setting */
  p->debug_start_pos = 0;
  if (p->filename_sym) {
    FUNC5(mrb, p->irep);
  }
  else {
    p->irep->debug_info = NULL;
  }
  p->parser = prev->parser;
  p->filename_index = prev->filename_index;

  p->rlev = prev->rlev+1;

  return p;
}