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
struct obs_lua_data {struct obs_lua_source* ls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  video_tick ; 

__attribute__((used)) static void FUNC8(void *data, float seconds)
{
	struct obs_lua_data *ld = data;
	struct obs_lua_source *ls = ld->ls;

	FUNC5(&ls->definition_mutex);
	if (!ls->script)
		goto fail;
	if (!FUNC1(video_tick))
		goto fail;

	FUNC2();

	FUNC3();
	FUNC4(ls->script, (double)seconds);
	FUNC0(video_tick, 2, 0);

	FUNC7();

fail:
	FUNC6(&ls->definition_mutex);
}