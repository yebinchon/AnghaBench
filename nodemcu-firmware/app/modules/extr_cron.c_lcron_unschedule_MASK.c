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
typedef  int /*<<< orphan*/  cronent_ud_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 size_t cronent_count ; 
 int /*<<< orphan*/ * cronent_list ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(lua_State *L) {
  cronent_ud_t *ud = FUNC1(L, 1, "cron.entry");
  size_t i = FUNC0(L, ud);
  if (i == -1) return 0;
  FUNC2(L, LUA_REGISTRYINDEX, cronent_list[i]);
  FUNC3(cronent_list + i, cronent_list + i + 1, sizeof(int) * (cronent_count - i - 1));
  cronent_count--;
  return 0;
}