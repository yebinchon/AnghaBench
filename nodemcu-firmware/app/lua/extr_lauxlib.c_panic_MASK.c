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
 int /*<<< orphan*/  c_stderr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
  (void)L;  /* to avoid warnings */
#if defined(LUA_USE_STDIO)
  fprintf(c_stderr, "PANIC: unprotected error in call to Lua API (%s)\n",
                   lua_tostring(L, -1));
#else
  FUNC2("PANIC: unprotected error in call to Lua API (%s)\n",
                   FUNC1(L, -1));
#endif
  while (1) {}
  return 0;
}