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
struct obs_lua_source {int /*<<< orphan*/  definition_mutex; int /*<<< orphan*/  script; } ;
struct obs_lua_data {struct obs_lua_data** p_prev_next; struct obs_lua_data* next; struct obs_lua_source* ls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_lua_data*) ; 
 int /*<<< orphan*/  destroy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *data)
{
	struct obs_lua_data *ld = data;
	struct obs_lua_source *ls = ld->ls;
	struct obs_lua_data *next;

	FUNC4(&ls->definition_mutex);
	if (!ls->script)
		goto fail;
	if (!FUNC2(destroy))
		goto fail;

	FUNC3();
	FUNC1(ld);
	FUNC6();

fail:
	next = ld->next;
	*ld->p_prev_next = next;
	if (next)
		next->p_prev_next = ld->p_prev_next;

	FUNC0(data);
	FUNC5(&ls->definition_mutex);
}