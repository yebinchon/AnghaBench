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
struct obs_source_frame {int /*<<< orphan*/  refs; } ;
struct TYPE_4__ {int /*<<< orphan*/  async_mutex; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_source_frame*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct obs_source_frame*) ; 

void FUNC5(obs_source_t *source,
			      struct obs_source_frame *frame)
{
	if (!frame)
		return;

	if (!source) {
		FUNC0(frame);
	} else {
		FUNC2(&source->async_mutex);

		if (FUNC1(&frame->refs) == 0)
			FUNC0(frame);
		else
			FUNC4(source, frame);

		FUNC3(&source->async_mutex);
	}
}