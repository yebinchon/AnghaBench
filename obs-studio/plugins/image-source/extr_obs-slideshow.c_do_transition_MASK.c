#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* array; } ;
struct slideshow {size_t cur_item; int /*<<< orphan*/  tr_speed; int /*<<< orphan*/  transition; TYPE_1__ files; scalar_t__ use_cut; } ;
struct TYPE_4__ {int /*<<< orphan*/ * source; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_TRANSITION_MODE_AUTO ; 
 int FUNC0 (struct slideshow*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data, bool to_null)
{
	struct slideshow *ss = data;
	bool valid = FUNC0(ss);

	if (valid && ss->use_cut)
		FUNC1(ss->transition,
				   ss->files.array[ss->cur_item].source);

	else if (valid && !to_null)
		FUNC2(ss->transition, OBS_TRANSITION_MODE_AUTO,
				     ss->tr_speed,
				     ss->files.array[ss->cur_item].source);

	else
		FUNC2(ss->transition, OBS_TRANSITION_MODE_AUTO,
				     ss->tr_speed, NULL);
}