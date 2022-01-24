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
struct obs_python_script {int /*<<< orphan*/  name; int /*<<< orphan*/  dir; TYPE_1__ base; int /*<<< orphan*/  module; } ;
typedef  int /*<<< orphan*/  obs_script_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_python_script*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ python_loaded ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(obs_script_t *s)
{
	struct obs_python_script *data = (struct obs_python_script *)s;

	if (data) {
		if (python_loaded) {
			FUNC3();
			FUNC0(data->module);
			FUNC5();
		}

		FUNC2(&data->base.path);
		FUNC2(&data->base.file);
		FUNC2(&data->base.desc);
		FUNC4(data->base.settings);
		FUNC2(&data->dir);
		FUNC2(&data->name);
		FUNC1(data);
	}
}