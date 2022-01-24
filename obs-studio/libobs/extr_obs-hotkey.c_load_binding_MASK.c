#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {scalar_t__ key; int /*<<< orphan*/  modifiers; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ obs_key_combination_t ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERACT_ALT_KEY ; 
 int /*<<< orphan*/  INTERACT_COMMAND_KEY ; 
 int /*<<< orphan*/  INTERACT_CONTROL_KEY ; 
 int /*<<< orphan*/  INTERACT_SHIFT_KEY ; 
 scalar_t__ OBS_KEY_LAST_VALUE ; 
 scalar_t__ OBS_KEY_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(obs_hotkey_t *hotkey, obs_data_t *data)
{
	if (!hotkey || !data)
		return;

	obs_key_combination_t combo = {0};
	uint32_t *modifiers = &combo.modifiers;
	FUNC1(modifiers, data, "shift", INTERACT_SHIFT_KEY);
	FUNC1(modifiers, data, "control", INTERACT_CONTROL_KEY);
	FUNC1(modifiers, data, "alt", INTERACT_ALT_KEY);
	FUNC1(modifiers, data, "command", INTERACT_COMMAND_KEY);

	combo.key = FUNC3(FUNC2(data, "key"));
	if (!modifiers &&
	    (combo.key == OBS_KEY_NONE || combo.key >= OBS_KEY_LAST_VALUE))
		return;

	FUNC0(hotkey, combo);
}