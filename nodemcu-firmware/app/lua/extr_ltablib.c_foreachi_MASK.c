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
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  int i;
  int n = FUNC0(L, 1);
  FUNC1(L, 2);
  for (i=1; i <= n; i++) {
    FUNC6(L, 2);  /* function */
    FUNC5(L, i);  /* 1st argument */
    FUNC7(L, 1, i);  /* 2nd argument */
    FUNC2(L, 2, 1);
    if (!FUNC3(L, -1))
      return 1;
    FUNC4(L, 1);  /* remove nil result */
  }
  return 0;
}