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
typedef  int /*<<< orphan*/  buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  pipe_meta ; 

__attribute__((used)) static buffer_t *FUNC12 (lua_State *L, int tbl, int head) {//[-0, +0, v]
  int m = FUNC4(L), n = FUNC5(L, tbl);
  if (FUNC10(L, tbl) == LUA_TTABLE && FUNC3(L, tbl)) {
    FUNC6(L, FUNC0(pipe_meta));/* push comparison metatable */
    if (FUNC7(L, -1, -2)) {                       /* check these match */
      buffer_t *ud;
      if (n == 0) {
        ud = head ? NULL : FUNC11(L, tbl, 1);
      } else {
        int i = head ? 1 : n;                   /* point to head or tail of T */
        FUNC8(L, tbl, i);                               /* and fetch UD */
        ud = FUNC1(L, -1);
      }
      FUNC9(L, m);
      return ud;                            /* and return ptr to buffer_t rec */
    }
  }
  FUNC2(L, tbl, "pipe table");
  return NULL;                               /* NORETURN avoid compiler error */
}