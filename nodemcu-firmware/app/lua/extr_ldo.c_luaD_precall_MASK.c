#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_23__ ;
typedef  struct TYPE_27__   TYPE_21__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_30__ {scalar_t__ top; scalar_t__ base; scalar_t__ stack_last; int hookmask; int /*<<< orphan*/  savedpc; TYPE_1__* ci; } ;
typedef  TYPE_3__ lua_State ;
typedef  int (* lua_CFunction ) (TYPE_3__*) ;
struct TYPE_33__ {scalar_t__ func; scalar_t__ base; scalar_t__ top; int nresults; scalar_t__ tailcalls; } ;
struct TYPE_32__ {TYPE_5__* p; int /*<<< orphan*/  isC; } ;
struct TYPE_31__ {scalar_t__ maxstacksize; scalar_t__ numparams; int /*<<< orphan*/  code; int /*<<< orphan*/  is_vararg; } ;
struct TYPE_29__ {int (* f ) (TYPE_3__*) ;} ;
struct TYPE_28__ {TYPE_6__ l; } ;
struct TYPE_27__ {TYPE_2__ c; } ;
struct TYPE_26__ {int /*<<< orphan*/  savedpc; } ;
typedef  scalar_t__ StkId ;
typedef  TYPE_5__ Proto ;
typedef  TYPE_6__ LClosure ;
typedef  TYPE_7__ CallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_HOOKCALL ; 
 int LUA_MASKCALL ; 
 scalar_t__ LUA_MINSTACK ; 
 int PCRC ; 
 int PCRLUA ; 
 int PCRYIELD ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_5__*,int) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_23__* FUNC2 (scalar_t__) ; 
 TYPE_21__* FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_7__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 void* FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int FUNC15 (TYPE_3__*) ; 
 int FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 

int FUNC20 (lua_State *L, StkId func, int nresults) {
  ptrdiff_t funcr;
  LClosure *cl = NULL;
  if (!FUNC18(func) && !FUNC19(func)) /* `func' is not a function? */
    func = FUNC17(L, func);  /* check the `function' tag method */
  funcr = FUNC13(L, func);
  if (FUNC18(func))
    cl = &FUNC2(func)->l;
  L->ci->savedpc = L->savedpc;
  if (cl && !cl->isC) {  /* Lua function? prepare its call */
    CallInfo *ci;
    StkId st, base;
    Proto *p = cl->p;
    FUNC7(L, p->maxstacksize);
    func = FUNC12(L, funcr);
    if (!p->is_vararg) {  /* no varargs? */
      base = func + 1;
      if (L->top > base + p->numparams)
        L->top = base + p->numparams;
    }
    else {  /* vararg function */
      int nargs = FUNC1(L->top - func) - 1;
      base = FUNC0(L, p, nargs);
      func = FUNC12(L, funcr);  /* previous call may change the stack */
    }
    ci = FUNC5(L);  /* now `enter' new function */
    ci->func = func;
    L->base = ci->base = base;
    ci->top = L->base + p->maxstacksize;
    FUNC9(ci->top <= L->stack_last);
    L->savedpc = p->code;  /* starting point */
    ci->tailcalls = 0;
    ci->nresults = nresults;
    for (st = L->top; st < ci->top; st++)
      FUNC14(st);
    L->top = ci->top;
    if (L->hookmask & LUA_MASKCALL) {
      L->savedpc++;  /* hooks assume 'pc' is already incremented */
      FUNC6(L, LUA_HOOKCALL, -1);
      L->savedpc--;  /* correct 'pc' */
    }
    return PCRLUA;
  }
  else {  /* if is a C function, call it */
    CallInfo *ci;
    int n;
    FUNC7(L, LUA_MINSTACK);  /* ensure minimum stack size */
    ci = FUNC5(L);  /* now `enter' new function */
    ci->func = FUNC12(L, funcr);
    L->base = ci->base = ci->func + 1;
    ci->top = L->top + LUA_MINSTACK;
    FUNC9(ci->top <= L->stack_last);
    ci->nresults = nresults;
    if (L->hookmask & LUA_MASKCALL)
      FUNC6(L, LUA_HOOKCALL, -1);
    FUNC11(L);
    if (FUNC18(ci->func))
      n = (*FUNC3(L)->c.f)(L);  /* do the actual call */
    else
      n = ((lua_CFunction)FUNC4(ci->func))(L);  /* do the actual call */
    FUNC10(L);
    if (n < 0)  /* yielding? */
      return PCRYIELD;
    else {
      FUNC8(L, L->top - n);
      return PCRC;
    }
  }
}