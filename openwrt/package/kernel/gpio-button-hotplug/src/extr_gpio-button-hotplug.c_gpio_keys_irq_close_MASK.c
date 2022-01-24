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
struct gpio_keys_platform_data {size_t nbuttons; } ;
struct gpio_keys_button_dev {struct gpio_keys_button_data* data; struct gpio_keys_platform_data* pdata; } ;
struct gpio_keys_button_data {int /*<<< orphan*/  work; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gpio_keys_button_dev *bdev)
{
	struct gpio_keys_platform_data *pdata = bdev->pdata;
	size_t i;

	for (i = 0; i < pdata->nbuttons; i++) {
		struct gpio_keys_button_data *bdata = &bdev->data[i];

		FUNC1(bdata->irq);
		FUNC0(&bdata->work);
	}
}