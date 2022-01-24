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
struct TYPE_3__ {int /*<<< orphan*/  texture; } ;
struct mask_filter_data {char* image_file; TYPE_1__ image; int /*<<< orphan*/  target; scalar_t__ update_time_elapsed; int /*<<< orphan*/  image_file_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mask_filter_data*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct mask_filter_data *filter)
{
	FUNC3(filter);

	char *path = filter->image_file;

	if (path && *path) {
		filter->image_file_timestamp = FUNC0(path);
		FUNC1(&filter->image, path);
		filter->update_time_elapsed = 0;

		FUNC4();
		FUNC2(&filter->image);
		FUNC5();

		filter->target = filter->image.texture;
	}
}