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
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  FUNC1(L, 1, LUA_TTABLE);
  FUNC0(L, 2);
  FUNC6(L);  /* first key */
  while (FUNC4(L, 1)) {
    FUNC7(L, 2);  /* function */
    FUNC7(L, -3);  /* key */
    FUNC7(L, -3);  /* value */
    FUNC2(L, 2, 1);
    if (!FUNC3(L, -1))
      return 1;
    FUNC5(L, 2);  /* remove value and result */
  }
  return 0;
}