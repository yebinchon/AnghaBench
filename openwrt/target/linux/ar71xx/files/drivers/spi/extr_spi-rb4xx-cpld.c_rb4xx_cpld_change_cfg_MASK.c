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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* rb4xx_cpld ; 

int FUNC3(unsigned mask, unsigned value)
{
	int ret;

	if (rb4xx_cpld == NULL)
		return -ENODEV;

	FUNC1(&rb4xx_cpld->lock);
	ret = FUNC0(rb4xx_cpld, mask, value);
	FUNC2(&rb4xx_cpld->lock);

	return ret;
}