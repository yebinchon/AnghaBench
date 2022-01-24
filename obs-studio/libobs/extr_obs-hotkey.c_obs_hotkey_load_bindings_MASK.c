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
typedef  int /*<<< orphan*/  obs_key_combination_t ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int /*<<< orphan*/  obs_hotkey_id ;
struct TYPE_4__ {int /*<<< orphan*/ * array; } ;
struct TYPE_5__ {TYPE_1__ hotkeys; } ;
struct TYPE_6__ {TYPE_2__ hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__* obs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(obs_hotkey_id id,
			      obs_key_combination_t *combinations, size_t num)
{
	size_t idx;

	if (!FUNC3())
		return;

	if (FUNC1(id, &idx)) {
		obs_hotkey_t *hotkey = &obs->hotkeys.hotkeys.array[idx];
		FUNC4(id);
		for (size_t i = 0; i < num; i++)
			FUNC0(hotkey, combinations[i]);

		FUNC2("hotkey_bindings_changed", hotkey);
	}
	FUNC5();
}