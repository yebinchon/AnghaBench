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
 int LUA_GLOBALSINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
  if (!FUNC5(L, 1))  /* 'message' not a string? */
    return 1;  /* keep it intact */
  FUNC1(L, LUA_GLOBALSINDEX, "debug");
  if (!FUNC6(L, -1) && !FUNC4(L, -1)) {
    FUNC7(L, 1);
    return 1;
  }
  FUNC1(L, -1, "traceback");
  if (!FUNC2(L, -1) && !FUNC3(L, -1)) {
    FUNC7(L, 2);
    return 1;
  }
  FUNC9(L, 1);  /* pass error message */
  FUNC8(L, 2);  /* skip this function and traceback */
  FUNC0(L, 2, 1);  /* call debug.traceback */
  return 1;
}