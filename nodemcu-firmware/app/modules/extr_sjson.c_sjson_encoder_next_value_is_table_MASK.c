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
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(lua_State *L) {
  int count = 10;

  while ((FUNC1(L, -1) == LUA_TFUNCTION
#ifdef LUA_TLIGHTFUNCTION
    || lua_type(L, -1) == LUA_TLIGHTFUNCTION
#endif
    ) && count-- > 0) {
    // call it and use the return value
    FUNC0(L, 0, 1);          // Expecting replacement value
  }

  return (FUNC1(L, -1) == LUA_TTABLE);
}