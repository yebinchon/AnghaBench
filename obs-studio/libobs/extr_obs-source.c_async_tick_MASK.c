#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/ * cur_async_frame; int /*<<< orphan*/  async_update_texture; int /*<<< orphan*/  async_mutex; int /*<<< orphan*/  last_sys_timestamp; } ;
typedef  TYPE_2__ obs_source_t ;
struct TYPE_10__ {int /*<<< orphan*/  video_time; } ;
struct TYPE_12__ {TYPE_1__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* obs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(obs_source_t *source)
{
	uint64_t sys_time = obs->video.video_time;

	FUNC3(&source->async_mutex);

	if (FUNC1(source)) {
		FUNC0(source, sys_time);
	} else {
		if (source->cur_async_frame) {
			FUNC5(source, source->cur_async_frame);
			source->cur_async_frame = NULL;
		}

		source->cur_async_frame = FUNC2(source, sys_time);
	}

	source->last_sys_timestamp = sys_time;
	FUNC4(&source->async_mutex);

	if (source->cur_async_frame)
		source->async_update_texture =
			FUNC6(source, source->cur_async_frame);
}