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
struct gpio_keys_platform_data {int /*<<< orphan*/  poll_interval; } ;
struct gpio_keys_button_dev {int /*<<< orphan*/  work; struct gpio_keys_platform_data* pdata; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct gpio_keys_button_dev *bdev)
{
	struct gpio_keys_platform_data *pdata = bdev->pdata;
	unsigned long delay = FUNC0(pdata->poll_interval);

	if (delay >= HZ)
		delay = FUNC1(delay);
	FUNC2(&bdev->work, delay);
}