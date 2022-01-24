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
 scalar_t__ LUA_TNUMBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(lua_State *L, int argno) {
  // Returns -1 for object, otherwise the maximum integer key value found.
  FUNC3(L, argno);
  // stack now contains: -1 => table
  FUNC2(L);
  // stack now contains: -1 => nil; -2 => table
  //
  int maxkey = 0;

  while (FUNC0(L, -2)) {
    FUNC1(L, 1);
    // stack now contains: -1 => key; -2 => table
    if (FUNC5(L, -1) == LUA_TNUMBER) {
      int val = FUNC4(L, -1);
      if (val > maxkey) {
        maxkey = val;
      } else if (val <= 0) {
        maxkey = -1;
        FUNC1(L, 1);
        break;
      }
    } else {
      maxkey = -1;
      FUNC1(L, 1);
      break;
    }
  }

  FUNC1(L, 1);

  return maxkey;
}