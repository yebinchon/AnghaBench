#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int loaded; } ;
struct TYPE_3__ {int /*<<< orphan*/  array; } ;
struct obs_python_script {TYPE_2__ base; TYPE_1__ dir; int /*<<< orphan*/  module; } ;
typedef  int /*<<< orphan*/  obs_script_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct obs_python_script*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ python_loaded ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(obs_script_t *s)
{
	struct obs_python_script *data = (struct obs_python_script *)s;
	if (python_loaded && !data->base.loaded) {
		FUNC2();
		if (!data->module)
			FUNC0(data->dir.array);
		data->base.loaded = FUNC1(data);
		FUNC4();

		if (data->base.loaded)
			FUNC3(s, NULL);
	}

	return data->base.loaded;
}