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
struct obs_lua_source {int /*<<< orphan*/  script; } ;
struct obs_lua_data {int /*<<< orphan*/  lua_data_ref; struct obs_lua_source* ls; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destroy ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct obs_lua_data *ld)
{
	struct obs_lua_source *ls = ld->ls;

	FUNC1();
	FUNC0(destroy, 1, 0);
	FUNC2(ls->script, LUA_REGISTRYINDEX, ld->lua_data_ref);
	ld->lua_data_ref = LUA_REFNIL;
}