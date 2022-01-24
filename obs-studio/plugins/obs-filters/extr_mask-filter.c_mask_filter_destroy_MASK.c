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
struct mask_filter_data {int /*<<< orphan*/  image; int /*<<< orphan*/  effect; struct mask_filter_data* image_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mask_filter_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct mask_filter_data *filter = data;

	if (filter->image_file)
		FUNC0(filter->image_file);

	FUNC3();
	FUNC1(filter->effect);
	FUNC2(&filter->image);
	FUNC4();

	FUNC0(filter);
}