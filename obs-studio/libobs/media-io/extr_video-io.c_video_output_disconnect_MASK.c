#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ num; scalar_t__ array; } ;
struct TYPE_6__ {int /*<<< orphan*/  input_mutex; int /*<<< orphan*/  gpu_refs; int /*<<< orphan*/  raw_active; TYPE_5__ inputs; } ;
typedef  TYPE_1__ video_t ;

/* Variables and functions */
 size_t DARRAY_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (TYPE_1__*,void (*) (void*,struct video_data*),void*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(video_t *video,
			     void (*callback)(void *param,
					      struct video_data *frame),
			     void *param)
{
	if (!video || !callback)
		return;

	FUNC4(&video->input_mutex);

	size_t idx = FUNC6(video, callback, param);
	if (idx != DARRAY_INVALID) {
		FUNC7(video->inputs.array + idx);
		FUNC0(video->inputs, idx);

		if (video->inputs.num == 0) {
			FUNC3(&video->raw_active, false);
			if (!FUNC2(&video->gpu_refs)) {
				FUNC1(video);
			}
		}
	}

	FUNC5(&video->input_mutex);
}