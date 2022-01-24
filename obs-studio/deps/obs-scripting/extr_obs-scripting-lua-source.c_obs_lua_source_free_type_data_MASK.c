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
struct obs_lua_source {int /*<<< orphan*/  definition_mutex; int /*<<< orphan*/ * script; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_lua_source*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_lua_source*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *type_data)
{
	struct obs_lua_source *ls = type_data;

	FUNC3(&ls->definition_mutex);

	if (ls->script) {
		FUNC1();
		FUNC5(ls);
		FUNC6();
		ls->script = NULL;
	}

	FUNC4(&ls->definition_mutex);
	FUNC2(&ls->definition_mutex);
	FUNC0(ls);
}