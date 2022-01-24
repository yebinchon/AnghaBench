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
struct crop_filter_data {int /*<<< orphan*/  add_val; int /*<<< orphan*/  mul_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (struct crop_filter_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data, float seconds)
{
	struct crop_filter_data *filter = data;

	FUNC2(&filter->mul_val);
	FUNC2(&filter->add_val);
	FUNC1(filter, &filter->mul_val, &filter->add_val);

	FUNC0(seconds);
}