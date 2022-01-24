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
typedef  int /*<<< orphan*/  (* param_cb ) (int /*<<< orphan*/ *,int) ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static inline bool FUNC2(lua_State *script, param_cb param1_check,
				 const char *func)
{
	if (FUNC0(script) != 1) {
		FUNC1("Wrong number of parameters for %s", func);
		return false;
	}
	if (!param1_check(script, 1)) {
		FUNC1("Wrong parameter type for parameter %d of %s", 1, func);
		return false;
	}

	return true;
}