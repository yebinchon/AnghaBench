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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int) ;} ;
typedef  TYPE_3__ obs_hotkey_t ;
typedef  int /*<<< orphan*/  obs_hotkey_id ;
struct TYPE_6__ {TYPE_3__* array; } ;
struct TYPE_7__ {TYPE_1__ hotkeys; int /*<<< orphan*/  reroute_hotkeys; } ;
struct TYPE_9__ {TYPE_2__ hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_5__* obs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(obs_hotkey_id id, bool pressed)
{
	if (!FUNC1())
		return;

	if (!obs->hotkeys.reroute_hotkeys)
		goto unlock;

	size_t idx;
	if (!FUNC0(id, &idx))
		goto unlock;

	obs_hotkey_t *hotkey = &obs->hotkeys.hotkeys.array[idx];
	hotkey->func(hotkey->data, id, hotkey, pressed);

unlock:
	FUNC3();
}