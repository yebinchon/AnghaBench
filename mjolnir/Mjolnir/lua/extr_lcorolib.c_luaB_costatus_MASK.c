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
typedef  int /*<<< orphan*/  lua_Debug ;

/* Variables and functions */
#define  LUA_OK 129 
#define  LUA_YIELD 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  lua_State *co = FUNC0(L);
  if (L == co) FUNC3(L, "running");
  else {
    switch (FUNC4(co)) {
      case LUA_YIELD:
        FUNC3(L, "suspended");
        break;
      case LUA_OK: {
        lua_Debug ar;
        if (FUNC1(co, 0, &ar) > 0)  /* does it have frames? */
          FUNC3(L, "normal");  /* it is running */
        else if (FUNC2(co) == 0)
            FUNC3(L, "dead");
        else
          FUNC3(L, "suspended");  /* initial state */
        break;
      }
      default:  /* some error occurred */
        FUNC3(L, "dead");
        break;
    }
  }
  return 1;
}