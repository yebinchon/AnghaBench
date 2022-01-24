#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * description; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ obs_hotkey_t ;
struct TYPE_9__ {size_t num; TYPE_2__* array; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** translations; TYPE_5__ hotkey_pairs; TYPE_5__ hotkeys; TYPE_5__ bindings; } ;
struct TYPE_8__ {TYPE_1__ hotkeys; } ;

/* Variables and functions */
 size_t OBS_KEY_LAST_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__) ; 
 TYPE_4__* obs ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(void)
{
	const size_t num = obs->hotkeys.hotkeys.num;
	obs_hotkey_t *hotkeys = obs->hotkeys.hotkeys.array;
	for (size_t i = 0; i < num; i++) {
		FUNC0(hotkeys[i].name);
		FUNC0(hotkeys[i].description);

		FUNC2(&hotkeys[i]);
	}
	FUNC1(obs->hotkeys.bindings);
	FUNC1(obs->hotkeys.hotkeys);
	FUNC1(obs->hotkeys.hotkey_pairs);

	for (size_t i = 0; i < OBS_KEY_LAST_VALUE; i++) {
		if (obs->hotkeys.translations[i]) {
			FUNC0(obs->hotkeys.translations[i]);
			obs->hotkeys.translations[i] = NULL;
		}
	}
}