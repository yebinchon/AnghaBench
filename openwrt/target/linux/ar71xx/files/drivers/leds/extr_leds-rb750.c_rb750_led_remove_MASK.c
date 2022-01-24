#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rb750_led_drvdata {int num_leds; TYPE_1__* led_devs; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb750_led_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rb750_led_drvdata* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rb750_led_drvdata *drvdata;
	int i;

	drvdata = FUNC2(pdev);
	for (i = 0; i < drvdata->num_leds; i++)
		FUNC1(&drvdata->led_devs[i].cdev);

	FUNC0(drvdata);
	return 0;
}