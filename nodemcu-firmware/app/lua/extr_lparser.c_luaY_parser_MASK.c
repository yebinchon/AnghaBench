#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct LexState {int /*<<< orphan*/ * fs; int /*<<< orphan*/ * buff; } ;
struct FuncState {TYPE_2__* f; int /*<<< orphan*/ * prev; } ;
struct TYPE_11__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  ZIO ;
struct TYPE_12__ {scalar_t__ nups; int /*<<< orphan*/  is_vararg; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ Proto ;
typedef  int /*<<< orphan*/  Mbuffer ;

/* Variables and functions */
 int /*<<< orphan*/  TK_EOS ; 
 int /*<<< orphan*/  VARARG_ISVARARG ; 
 int /*<<< orphan*/  FUNC0 (struct LexState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct LexState*) ; 
 int /*<<< orphan*/  FUNC2 (struct LexState*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct LexState*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct LexState*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct LexState*,struct FuncState*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

Proto *FUNC11 (lua_State *L, ZIO *z, Mbuffer *buff, const char *name) {
  struct LexState lexstate;
  struct FuncState funcstate;
  TString *tname = FUNC5(L, name);
  FUNC10(L, L->top, tname);  /* protect name */
  FUNC4(L);
  lexstate.buff = buff;
  FUNC7(L, &lexstate, z, tname);
  FUNC9(&lexstate, &funcstate);
  funcstate.f->is_vararg = VARARG_ISVARARG;  /* main func. is always vararg */
  FUNC6(&lexstate);  /* read first token */
  FUNC1(&lexstate);
  FUNC0(&lexstate, TK_EOS);
  FUNC2(&lexstate);
#ifdef LUA_OPTIMIZE_DEBUG
  compile_stripdebug(L, funcstate.f);
#endif
  L->top--; /* remove 'name' from stack */
  FUNC8(funcstate.prev == NULL);
  FUNC8(funcstate.f->nups == 0);
  FUNC8(lexstate.fs == NULL);
  return funcstate.f;
}