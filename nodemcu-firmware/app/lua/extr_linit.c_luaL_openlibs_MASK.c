#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  lua_libs ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

void FUNC9 (lua_State *L) {

  FUNC7(L, FUNC0(lua_libs));
  FUNC6(L);  /* first key */
  /* loop round and open libraries */
#ifndef LUA_CROSS_COMPILER
// luaL_dbgbreak();  // This is a test point for debugging library start ups
#endif
  while (FUNC4(L, -2) != 0) {
    if (FUNC3(L,-1) &&
        FUNC1(L->top-1)) { // only process function entries
      FUNC8(L, -2);
      FUNC2(L, 1, 0);  // call luaopen_XXX(libname)
    } else {
      FUNC5(L, 1);
    }
  }
  FUNC5(L, 1);  //cleanup stack
}