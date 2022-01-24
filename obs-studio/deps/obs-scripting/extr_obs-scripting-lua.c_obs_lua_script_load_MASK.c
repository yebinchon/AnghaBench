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
struct TYPE_2__ {int loaded; } ;
struct obs_lua_script {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  obs_script_t ;

/* Variables and functions */
 int FUNC0 (struct obs_lua_script*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC2(obs_script_t *s)
{
	struct obs_lua_script *data = (struct obs_lua_script *)s;
	if (!data->base.loaded) {
		data->base.loaded = FUNC0(data);
		if (data->base.loaded)
			FUNC1(s, NULL);
	}

	return data->base.loaded;
}