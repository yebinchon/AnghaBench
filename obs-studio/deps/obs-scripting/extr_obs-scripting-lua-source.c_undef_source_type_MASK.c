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
struct obs_lua_source {int /*<<< orphan*/  definition_mutex; int /*<<< orphan*/ * script; struct obs_lua_data* first_source; int /*<<< orphan*/  id; } ;
struct obs_lua_script {int /*<<< orphan*/  mutex; } ;
struct obs_lua_data {struct obs_lua_data* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_lua_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_lua_source*) ; 

__attribute__((used)) static inline void FUNC5(struct obs_lua_script *data,
				     struct obs_lua_source *ls)
{
	FUNC2(&ls->definition_mutex);
	FUNC2(&data->mutex);

	FUNC1(ls->id, false);

	struct obs_lua_data *ld = ls->first_source;
	while (ld) {
		FUNC0(ld);
		ld = ld->next;
	}

	FUNC4(ls);
	ls->script = NULL;

	FUNC3(&data->mutex);
	FUNC3(&ls->definition_mutex);
}