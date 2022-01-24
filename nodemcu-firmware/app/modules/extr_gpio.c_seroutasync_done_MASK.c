#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_param_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ lua_done_ref; int /*<<< orphan*/ * delay_table; int /*<<< orphan*/  tablelen; } ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ serout ; 
 int /*<<< orphan*/  uint32 ; 

__attribute__((used)) static void FUNC7 (task_param_t arg)
{
  lua_State *L = FUNC3();
  if (serout.delay_table) {
    FUNC2(L, serout.delay_table, serout.tablelen, uint32);
    serout.delay_table = NULL;
  }
  if (serout.lua_done_ref != LUA_NOREF) {
    FUNC5 (L, LUA_REGISTRYINDEX, serout.lua_done_ref);
    FUNC1 (L, LUA_REGISTRYINDEX, serout.lua_done_ref);
    serout.lua_done_ref = LUA_NOREF;
    if (FUNC4(L, 0, 0, 0)) {
      // Uncaught Error. Print instead of sudden reset
      FUNC0(L, "error: %s", FUNC6(L, -1));
    }
  }
}