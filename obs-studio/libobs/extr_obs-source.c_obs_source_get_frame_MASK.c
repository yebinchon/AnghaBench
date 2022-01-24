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
struct TYPE_4__ {int /*<<< orphan*/  async_mutex; struct obs_source_frame* cur_async_frame; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct obs_source_frame *FUNC4(obs_source_t *source)
{
	struct obs_source_frame *frame = NULL;

	if (!FUNC0(source, "obs_source_get_frame"))
		return NULL;

	FUNC2(&source->async_mutex);

	frame = source->cur_async_frame;
	source->cur_async_frame = NULL;

	if (frame) {
		FUNC1(&frame->refs);
	}

	FUNC3(&source->async_mutex);

	return frame;
}