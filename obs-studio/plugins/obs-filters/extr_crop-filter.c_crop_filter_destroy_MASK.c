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
struct crop_filter_data {int /*<<< orphan*/  effect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crop_filter_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct crop_filter_data *filter = data;

	FUNC2();
	FUNC1(filter->effect);
	FUNC3();

	FUNC0(filter);
}