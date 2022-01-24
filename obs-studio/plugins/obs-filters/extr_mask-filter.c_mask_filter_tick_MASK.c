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
typedef  void* uint64_t ;
typedef  scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ is_animated_gif; } ;
struct mask_filter_data {float update_time_elapsed; scalar_t__ image_file_timestamp; void* last_time; TYPE_1__ image; int /*<<< orphan*/  image_file; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mask_filter_data*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *data, float seconds)
{
	struct mask_filter_data *filter = data;
	filter->update_time_elapsed += seconds;

	if (filter->update_time_elapsed >= 1.0f) {
		time_t t = FUNC0(filter->image_file);
		filter->update_time_elapsed = 0.0f;

		if (filter->image_file_timestamp != t) {
			FUNC3(filter);
		}
	}

	if (filter->image.is_animated_gif) {
		uint64_t cur_time = FUNC5();

		if (!filter->last_time)
			filter->last_time = cur_time;

		FUNC1(&filter->image,
				   cur_time - filter->last_time);
		FUNC4();
		FUNC2(&filter->image);
		FUNC6();

		filter->last_time = cur_time;
	}
}