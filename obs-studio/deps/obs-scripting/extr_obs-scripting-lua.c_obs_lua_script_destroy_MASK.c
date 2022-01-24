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
struct TYPE_2__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  desc; int /*<<< orphan*/  file; int /*<<< orphan*/  path; } ;
struct obs_lua_script {int /*<<< orphan*/  dir; int /*<<< orphan*/  log_chunk; TYPE_1__ base; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  obs_script_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_lua_script*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(obs_script_t *s)
{
	struct obs_lua_script *data = (struct obs_lua_script *)s;

	if (data) {
		FUNC3(&data->mutex);
		FUNC1(&data->base.path);
		FUNC1(&data->base.file);
		FUNC1(&data->base.desc);
		FUNC2(data->base.settings);
		FUNC1(&data->log_chunk);
		FUNC1(&data->dir);
		FUNC0(data);
	}
}