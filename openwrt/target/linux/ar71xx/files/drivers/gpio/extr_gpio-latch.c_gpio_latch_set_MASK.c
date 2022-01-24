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
struct gpio_latch_chip {int* gpios; int le_gpio; int le_active_low; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_latch_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_latch_chip*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct gpio_latch_chip* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static void
FUNC4(struct gpio_chip *gc, unsigned offset, int value)
{
	struct gpio_latch_chip *glc = FUNC3(gc);
	bool enable_latch = false;
	bool disable_latch = false;
	int gpio;

	gpio = glc->gpios[offset];

	if (gpio == glc->le_gpio) {
		enable_latch = value ^ glc->le_active_low;
		disable_latch = !enable_latch;
	}

	FUNC0(glc, enable_latch);
	FUNC2(gpio, value);
	FUNC1(glc, disable_latch);
}