#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MULTRET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  const char *fname = FUNC2(L, 1, NULL);
  int n = FUNC5(L);
#ifdef LUA_CROSS_COMPILER
  if (luaL_loadfile(L, fname) != 0) lua_error(L);
#else
  if (FUNC1(L, fname) != 0) FUNC4(L);
#endif
  FUNC3(L, 0, LUA_MULTRET);
  return FUNC5(L) - n;
}