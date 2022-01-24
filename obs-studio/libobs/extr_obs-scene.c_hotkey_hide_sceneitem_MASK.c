#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ user_visible; } ;
typedef  TYPE_1__ obs_sceneitem_t ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int /*<<< orphan*/ * obs_hotkey_pair_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (void*) ; 

__attribute__((used)) static bool FUNC4(void *data, obs_hotkey_pair_id id,
				  obs_hotkey_t *hotkey, bool pressed)
{
	FUNC0(id);
	FUNC0(hotkey);

	obs_sceneitem_t *si = FUNC3(data);
	if (pressed && si && si->user_visible) {
		FUNC2(si, false);
		FUNC1(si);
		return true;
	}

	FUNC1(si);
	return false;
}