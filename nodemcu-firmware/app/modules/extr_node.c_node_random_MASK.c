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
typedef  int lua_Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  int u;
  int l;

  switch (FUNC3(L)) {  /* check number of arguments */
    case 0: {  /* no arguments */
#ifdef LUA_NUMBER_INTEGRAL
      lua_pushnumber(L, 0);  /* Number between 0 and 1 - always 0 with ints */
#else
      FUNC4(L, (lua_Number)FUNC6() / (lua_Number)(1LL << 32));
#endif
      return 1;
    }
    case 1: {  /* only upper limit */
      l = 1;
      u = FUNC1(L, 1);
      break;
    }
    case 2: {  /* lower and upper limits */
      l = FUNC1(L, 1);
      u = FUNC1(L, 2);
      break;
    }
    default:
      return FUNC2(L, "wrong number of arguments");
  }
  FUNC0(L, l<=u, 2, "interval is empty");
  FUNC4(L, FUNC5(l, u));  /* int between `l' and `u' */
  return 1;
}