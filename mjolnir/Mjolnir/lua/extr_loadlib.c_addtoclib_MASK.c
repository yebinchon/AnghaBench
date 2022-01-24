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
 int /*<<< orphan*/  CLIBS ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC7 (lua_State *L, const char *path, void *plib) {
  FUNC4(L, LUA_REGISTRYINDEX, &CLIBS);
  FUNC2(L, plib);
  FUNC3(L, -1);
  FUNC6(L, -3, path);  /* CLIBS[path] = plib */
  FUNC5(L, -2, FUNC0(L, -2) + 1);  /* CLIBS[#CLIBS + 1] = plib */
  FUNC1(L, 1);  /* pop CLIBS table */
}