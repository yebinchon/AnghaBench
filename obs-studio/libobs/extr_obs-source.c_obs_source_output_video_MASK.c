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
struct obs_source_frame {int full_range; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct obs_source_frame*) ; 

void FUNC2(obs_source_t *source,
			     const struct obs_source_frame *frame)
{
	if (!frame) {
		FUNC1(source, NULL);
		return;
	}

	struct obs_source_frame new_frame = *frame;
	new_frame.full_range =
		FUNC0(frame->format) ? new_frame.full_range : true;

	FUNC1(source, &new_frame);
}