#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct obs_hotkey_internal_enum_forward {int (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ;int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ obs_hotkey_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static inline bool FUNC2(void *data, size_t idx, obs_hotkey_t *hotkey)
{
	FUNC0(idx);

	struct obs_hotkey_internal_enum_forward *forward = data;
	return forward->func(forward->data, hotkey->id, hotkey);
}