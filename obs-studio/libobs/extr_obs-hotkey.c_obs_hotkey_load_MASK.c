#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  obs_hotkey_id ;
typedef  int /*<<< orphan*/  obs_data_array_t ;
struct TYPE_4__ {int /*<<< orphan*/ * array; } ;
struct TYPE_5__ {TYPE_1__ hotkeys; } ;
struct TYPE_6__ {TYPE_2__ hotkeys; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* obs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(obs_hotkey_id id, obs_data_array_t *data)
{
	size_t idx;

	if (!FUNC2())
		return;

	if (FUNC0(id, &idx)) {
		FUNC3(id);
		FUNC1(&obs->hotkeys.hotkeys.array[idx], data);
	}
	FUNC4();
}