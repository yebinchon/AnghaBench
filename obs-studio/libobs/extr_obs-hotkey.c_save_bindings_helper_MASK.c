#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct save_bindings_helper_t {int /*<<< orphan*/  array; TYPE_1__* hotkey; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; int /*<<< orphan*/  modifiers; } ;
struct TYPE_7__ {scalar_t__ hotkey_id; TYPE_2__ key; } ;
typedef  TYPE_3__ obs_hotkey_binding_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
struct TYPE_5__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERACT_ALT_KEY ; 
 int /*<<< orphan*/  INTERACT_COMMAND_KEY ; 
 int /*<<< orphan*/  INTERACT_CONTROL_KEY ; 
 int /*<<< orphan*/  INTERACT_SHIFT_KEY ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC7(void *data, size_t idx,
					obs_hotkey_binding_t *binding)
{
	FUNC0(idx);
	struct save_bindings_helper_t *h = data;

	if (h->hotkey->id != binding->hotkey_id)
		return true;

	obs_data_t *hotkey = FUNC2();

	uint32_t modifiers = binding->key.modifiers;
	FUNC6(modifiers, hotkey, "shift", INTERACT_SHIFT_KEY);
	FUNC6(modifiers, hotkey, "control", INTERACT_CONTROL_KEY);
	FUNC6(modifiers, hotkey, "alt", INTERACT_ALT_KEY);
	FUNC6(modifiers, hotkey, "command", INTERACT_COMMAND_KEY);

	FUNC4(hotkey, "key", FUNC5(binding->key.key));

	FUNC1(h->array, hotkey);

	FUNC3(hotkey);

	return true;
}