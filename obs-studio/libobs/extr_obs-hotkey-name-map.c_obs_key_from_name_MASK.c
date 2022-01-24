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
typedef  int obs_key_t ;
struct TYPE_3__ {int /*<<< orphan*/  name_map; int /*<<< orphan*/  name_map_init_token; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;

/* Variables and functions */
 int OBS_KEY_NONE ; 
 int /*<<< orphan*/  init_name_map ; 
 TYPE_2__* obs ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

obs_key_t FUNC3(const char *name)
{
	if (!obs)
		return FUNC1(name);

	if (FUNC2(&obs->hotkeys.name_map_init_token, init_name_map))
		return FUNC1(name);

	int v = 0;
	if (FUNC0(obs->hotkeys.name_map, name, &v))
		return v;

	return OBS_KEY_NONE;
}