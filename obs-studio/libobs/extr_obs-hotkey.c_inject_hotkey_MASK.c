#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ key; int /*<<< orphan*/  modifiers; } ;
struct obs_hotkey_internal_inject {int /*<<< orphan*/  strict_modifiers; TYPE_2__ hotkey; int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {scalar_t__ key; } ;
struct TYPE_9__ {TYPE_1__ key; } ;
typedef  TYPE_3__ obs_hotkey_binding_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(void *data, size_t idx,
				 obs_hotkey_binding_t *binding)
{
	FUNC0(idx);
	struct obs_hotkey_internal_inject *event = data;

	if (FUNC2(binding, event->hotkey.modifiers,
			    event->strict_modifiers)) {
		bool pressed = binding->key.key == event->hotkey.key &&
			       event->pressed;
		FUNC1(binding, event->hotkey.modifiers, false,
			       event->strict_modifiers, &pressed);
	}

	return true;
}