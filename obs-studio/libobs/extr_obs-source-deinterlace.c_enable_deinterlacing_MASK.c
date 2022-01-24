#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ async_format; scalar_t__ async_width; scalar_t__ async_height; int deinterlace_mode; int /*<<< orphan*/  async_mutex; int /*<<< orphan*/ * prev_async_frame; int /*<<< orphan*/  deinterlace_effect; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;

/* Variables and functions */
 scalar_t__ VIDEO_FORMAT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(obs_source_t *source,
				 enum obs_deinterlace_mode mode)
{
	FUNC1();

	if (source->async_format != VIDEO_FORMAT_NONE &&
	    source->async_width != 0 && source->async_height != 0)
		FUNC6(source);

	source->deinterlace_mode = mode;
	source->deinterlace_effect = FUNC0(mode);

	FUNC3(&source->async_mutex);
	if (source->prev_async_frame) {
		FUNC5(source, source->prev_async_frame);
		source->prev_async_frame = NULL;
	}
	FUNC4(&source->async_mutex);

	FUNC2();
}