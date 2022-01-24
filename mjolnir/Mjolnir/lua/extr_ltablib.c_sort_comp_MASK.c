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
 int /*<<< orphan*/  LUA_OPLT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L, int a, int b) {
  if (FUNC2(L, 2))  /* no function? */
    return FUNC1(L, a, b, LUA_OPLT);  /* a < b */
  else {  /* function */
    int res;
    FUNC4(L, 2);    /* push function */
    FUNC4(L, a-1);  /* -1 to compensate function */
    FUNC4(L, b-2);  /* -2 to compensate function and 'a' */
    FUNC0(L, 2, 1);      /* call function */
    res = FUNC5(L, -1);  /* get result */
    FUNC3(L, 1);          /* pop result */
    return res;
  }
}