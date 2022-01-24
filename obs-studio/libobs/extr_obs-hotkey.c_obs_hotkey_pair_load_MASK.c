#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_4__ obs_hotkey_pair_t ;
typedef  int /*<<< orphan*/  obs_hotkey_pair_id ;
typedef  int /*<<< orphan*/  obs_data_array_t ;
struct TYPE_7__ {int /*<<< orphan*/ * array; } ;
struct TYPE_6__ {TYPE_4__* array; } ;
struct TYPE_8__ {TYPE_2__ hotkeys; TYPE_1__ hotkey_pairs; } ;
struct TYPE_10__ {TYPE_3__ hotkeys; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_5__* obs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(obs_hotkey_pair_id id, obs_data_array_t *data0,
			  obs_data_array_t *data1)
{
	if ((!data0 && !data1) || !FUNC3())
		return;

	size_t idx;
	if (!FUNC1(id, &idx))
		goto unlock;

	obs_hotkey_pair_t *pair = &obs->hotkeys.hotkey_pairs.array[idx];

	if (FUNC0(pair->id[0], &idx)) {
		FUNC4(pair->id[0]);
		FUNC2(&obs->hotkeys.hotkeys.array[idx], data0);
	}
	if (FUNC0(pair->id[1], &idx)) {
		FUNC4(pair->id[1]);
		FUNC2(&obs->hotkeys.hotkeys.array[idx], data1);
	}

unlock:
	FUNC5();
}