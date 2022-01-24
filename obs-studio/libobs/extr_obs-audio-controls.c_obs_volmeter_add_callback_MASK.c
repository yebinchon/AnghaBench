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
struct meter_cb {void* member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_volmeter_updated_t ;
struct TYPE_4__ {int /*<<< orphan*/  callback_mutex; int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_1__ obs_volmeter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct meter_cb*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(obs_volmeter_t *volmeter,
			       obs_volmeter_updated_t callback, void *param)
{
	struct meter_cb cb = {callback, param};

	if (!FUNC1(volmeter, "obs_volmeter_add_callback"))
		return;

	FUNC2(&volmeter->callback_mutex);
	FUNC0(volmeter->callbacks, &cb);
	FUNC3(&volmeter->callback_mutex);
}