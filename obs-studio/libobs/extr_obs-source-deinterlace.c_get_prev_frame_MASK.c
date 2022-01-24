#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct obs_source_frame {int /*<<< orphan*/  refs; } ;
struct TYPE_3__ {int /*<<< orphan*/  async_mutex; struct obs_source_frame* prev_async_frame; int /*<<< orphan*/ * cur_async_frame; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct obs_source_frame *FUNC3(obs_source_t *source,
						      bool *updated)
{
	struct obs_source_frame *frame = NULL;

	FUNC1(&source->async_mutex);

	*updated = source->cur_async_frame != NULL;
	frame = source->prev_async_frame;
	source->prev_async_frame = NULL;

	if (frame)
		FUNC0(&frame->refs);

	FUNC2(&source->async_mutex);

	return frame;
}