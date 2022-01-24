#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct obs_volmeter {int type; int /*<<< orphan*/  callback_mutex; int /*<<< orphan*/  mutex; } ;
typedef  struct obs_volmeter obs_volmeter_t ;
typedef  enum obs_fader_type { ____Placeholder_obs_fader_type } obs_fader_type ;

/* Variables and functions */
 struct obs_volmeter* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_volmeter*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_volmeter*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

obs_volmeter_t *FUNC5(enum obs_fader_type type)
{
	struct obs_volmeter *volmeter = FUNC0(sizeof(struct obs_volmeter));
	if (!volmeter)
		return NULL;

	FUNC4(&volmeter->mutex);
	FUNC4(&volmeter->callback_mutex);
	if (FUNC3(&volmeter->mutex, NULL) != 0)
		goto fail;
	if (FUNC3(&volmeter->callback_mutex, NULL) != 0)
		goto fail;

	volmeter->type = type;

	FUNC2(volmeter, 50);

	return volmeter;
fail:
	FUNC1(volmeter);
	return NULL;
}