#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_18__ {int numparams; int is_vararg; } ;
typedef  int StkId ;
typedef  TYPE_2__ Proto ;

/* Variables and functions */
 int VARARG_HASARG ; 
 int VARARG_NEEDSARG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static StkId FUNC18 (lua_State *L, Proto *p, int actual) {
  int i;
  int nfixargs = p->numparams;
#if defined(LUA_COMPAT_VARARG)
  Table *htab = NULL;
#endif
  StkId base, fixed;
  for (; actual < nfixargs; ++actual)
    FUNC13(L->top++);
#if defined(LUA_COMPAT_VARARG)
  if (p->is_vararg & VARARG_NEEDSARG) { /* compat. with old-style vararg? */
    int nvar = actual - nfixargs;  /* number of extra arguments */
    lua_assert(p->is_vararg & VARARG_HASARG);
    luaC_checkGC(L);
    htab = luaH_new(L, nvar, 1);  /* create `arg' table */
    sethvalue2s(L, L->top, htab); /* put table on stack */
    incr_top(L);
    fixedstack(L);
    for (i=0; i<nvar; i++)  /* put extra arguments into `arg' table */
      setobj2n(L, luaH_setnum(L, htab, i+1), L->top - 1 - nvar + i);
    unfixedstack(L);
    /* store counter in field `n' */
    setnvalue(luaH_setstr(L, htab, luaS_newliteral(L, "n")), cast_num(nvar));
    L->top--; /* remove table from stack */
  }
#endif
  /* move fixed parameters to final position */
  fixed = L->top - actual;  /* first fixed argument */
  base = L->top;  /* final position of first argument */
  for (i=0; i<nfixargs; i++) {
    FUNC16(L, L->top++, fixed+i);
    FUNC13(fixed+i);
  }
#if defined(LUA_COMPAT_VARARG)
  /* add `arg' parameter */
  if (htab) {
    sethvalue(L, L->top++, htab);
    lua_assert(iswhite(obj2gco(htab)));
  }
#endif
  return base;
}