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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_latch_platform_data {size_t le_gpio_index; size_t num_gpios; int* gpios; int /*<<< orphan*/  base; int /*<<< orphan*/  le_active_low; } ;
struct gpio_chip {int can_sleep; int ngpio; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  base; int /*<<< orphan*/  label; } ;
struct gpio_latch_chip {struct gpio_chip gc; int /*<<< orphan*/  le_active_low; int /*<<< orphan*/ * gpios; int /*<<< orphan*/  le_gpio; int /*<<< orphan*/  latch_mutex; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIO_LATCH_DRIVER_NAME ; 
 struct gpio_latch_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_latch_direction_input ; 
 int /*<<< orphan*/  gpio_latch_direction_output ; 
 int /*<<< orphan*/  gpio_latch_get ; 
 int /*<<< orphan*/  gpio_latch_set ; 
 int FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct gpio_latch_chip*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct gpio_latch_chip *glc;
	struct gpio_latch_platform_data *pdata;
	struct gpio_chip *gc;
	int size;
	int ret;
	int i;

	pdata = FUNC0(&pdev->dev);
	if (!pdata)
		return -EINVAL;

	if (pdata->le_gpio_index >= pdata->num_gpios ||
	    !pdata->num_gpios ||
	    !pdata->gpios)
		return -EINVAL;

	for (i = 0; i < pdata->num_gpios; i++) {
		int gpio = pdata->gpios[i];

		ret = FUNC1(&pdev->dev, gpio,
					GPIO_LATCH_DRIVER_NAME);
		if (ret)
			return ret;
	}

	glc = FUNC2(&pdev->dev, sizeof(*glc), GFP_KERNEL);
	if (!glc)
		return -ENOMEM;

	FUNC5(&glc->mutex);
	FUNC5(&glc->latch_mutex);

	size = pdata->num_gpios * sizeof(glc->gpios[0]);
	glc->gpios = FUNC2(&pdev->dev, size , GFP_KERNEL);
	if (!glc->gpios)
		return -ENOMEM;

	FUNC4(glc->gpios, pdata->gpios, size);

	glc->le_gpio = glc->gpios[pdata->le_gpio_index];
	glc->le_active_low = pdata->le_active_low;

	gc = &glc->gc;

	gc->label = GPIO_LATCH_DRIVER_NAME;
	gc->base = pdata->base;
	gc->can_sleep = true;
	gc->ngpio = pdata->num_gpios;
	gc->get = gpio_latch_get;
	gc->set = gpio_latch_set;
	gc->direction_input = gpio_latch_direction_input,
	gc->direction_output = gpio_latch_direction_output;

	FUNC6(pdev, glc);

	ret = FUNC3(&glc->gc);
	if (ret)
		return ret;

	return 0;
}