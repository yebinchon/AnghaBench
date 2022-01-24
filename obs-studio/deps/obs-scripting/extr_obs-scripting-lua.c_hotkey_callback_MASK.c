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
struct TYPE_2__ {scalar_t__ removed; } ;
struct lua_obs_callback {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int /*<<< orphan*/ * obs_hotkey_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lua_obs_callback*) ; 
 int /*<<< orphan*/  defer_hotkey_pressed ; 
 int /*<<< orphan*/  defer_hotkey_unpressed ; 

__attribute__((used)) static void FUNC2(void *p_cb, obs_hotkey_id id, obs_hotkey_t *hotkey,
			    bool pressed)
{
	struct lua_obs_callback *cb = p_cb;

	if (cb->base.removed)
		return;

	if (pressed)
		FUNC1(defer_hotkey_pressed, cb);
	else
		FUNC1(defer_hotkey_unpressed, cb);

	FUNC0(hotkey);
	FUNC0(id);
}