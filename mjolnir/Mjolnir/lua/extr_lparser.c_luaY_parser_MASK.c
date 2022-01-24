#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_21__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_4__ lua_State ;
typedef  int /*<<< orphan*/  ZIO ;
struct TYPE_30__ {scalar_t__ n; } ;
struct TYPE_29__ {scalar_t__ n; } ;
struct TYPE_27__ {scalar_t__ n; } ;
struct TYPE_35__ {TYPE_3__ label; TYPE_2__ gt; TYPE_1__ actvar; } ;
struct TYPE_34__ {int nups; int /*<<< orphan*/  prev; TYPE_21__* f; } ;
struct TYPE_33__ {TYPE_21__* p; } ;
struct TYPE_32__ {int /*<<< orphan*/  fs; TYPE_8__* dyd; int /*<<< orphan*/ * buff; int /*<<< orphan*/  h; } ;
struct TYPE_28__ {int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  Mbuffer ;
typedef  TYPE_5__ LexState ;
typedef  TYPE_6__ LClosure ;
typedef  TYPE_7__ FuncState ;
typedef  TYPE_8__ Dyndata ;

/* Variables and functions */
 int FUNC0 (TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_6__* FUNC2 (TYPE_4__*,int) ; 
 TYPE_21__* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

LClosure *FUNC11 (lua_State *L, ZIO *z, Mbuffer *buff,
                       Dyndata *dyd, const char *name, int firstchar) {
  LexState lexstate;
  FuncState funcstate;
  LClosure *cl = FUNC2(L, 1);  /* create main closure */
  FUNC9(L, L->top, cl);  /* anchor it (to avoid being collected) */
  FUNC1(L);
  lexstate.h = FUNC4(L);  /* create table for scanner */
  FUNC10(L, L->top, lexstate.h);  /* anchor it */
  FUNC1(L);
  funcstate.f = cl->p = FUNC3(L);
  funcstate.f->source = FUNC5(L, name);  /* create and anchor TString */
  FUNC7(FUNC0(funcstate.f));  /* do not need barrier here */
  lexstate.buff = buff;
  lexstate.dyd = dyd;
  dyd->actvar.n = dyd->gt.n = dyd->label.n = 0;
  FUNC6(L, &lexstate, z, funcstate.f->source, firstchar);
  FUNC8(&lexstate, &funcstate);
  FUNC7(!funcstate.prev && funcstate.nups == 1 && !lexstate.fs);
  /* all scopes should be correctly finished */
  FUNC7(dyd->actvar.n == 0 && dyd->gt.n == 0 && dyd->label.n == 0);
  L->top--;  /* remove scanner's table */
  return cl;  /* closure is on the stack, too */
}