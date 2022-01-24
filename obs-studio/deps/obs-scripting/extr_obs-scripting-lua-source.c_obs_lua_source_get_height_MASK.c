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
typedef  scalar_t__ uint32_t ;
struct obs_lua_source {int /*<<< orphan*/  definition_mutex; int /*<<< orphan*/  script; } ;
struct obs_lua_data {struct obs_lua_source* ls; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  get_height ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static uint32_t FUNC9(void *data)
{
	struct obs_lua_data *ld = data;
	struct obs_lua_source *ls = ld->ls;
	uint32_t height = 0;

	FUNC6(&ls->definition_mutex);
	if (!ls->script)
		goto fail;
	if (!FUNC1(get_height))
		goto fail;

	FUNC2();

	FUNC4();
	if (FUNC0(get_height, 1, 1)) {
		height = (uint32_t)FUNC5(ls->script, -1);
		FUNC3(1);
	}

	FUNC8();

fail:
	FUNC7(&ls->definition_mutex);
	return height;
}