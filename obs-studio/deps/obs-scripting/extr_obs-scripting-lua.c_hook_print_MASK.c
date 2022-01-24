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
struct obs_lua_script {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct obs_lua_script* current_lua_script ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int FUNC2(lua_State *script)
{
	struct obs_lua_script *data = current_lua_script;
	const char *msg = FUNC0(script, 1);
	if (!msg)
		return 0;

	FUNC1(&data->base, "%s", msg);
	return 0;
}