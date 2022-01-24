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
struct nxp_74hc153_platform_data {unsigned int gpio_pin_2y; unsigned int gpio_pin_1y; int /*<<< orphan*/  gpio_pin_s1; int /*<<< orphan*/  gpio_pin_s0; } ;
struct nxp_74hc153_chip {int /*<<< orphan*/  lock; TYPE_1__* parent; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct nxp_74hc153_platform_data* platform_data; } ;

/* Variables and functions */
 unsigned int NXP_74HC153_BANK_MASK ; 
 unsigned int NXP_74HC153_S0_MASK ; 
 unsigned int NXP_74HC153_S1_MASK ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct nxp_74hc153_chip* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned offset)
{
	struct nxp_74hc153_chip *nxp;
	struct nxp_74hc153_platform_data *pdata;
	unsigned s0;
	unsigned s1;
	unsigned pin;
	int ret;

	nxp = FUNC2(gc);
	pdata = nxp->parent->platform_data;

	s0 = !!(offset & NXP_74HC153_S0_MASK);
	s1 = !!(offset & NXP_74HC153_S1_MASK);
	pin = (offset & NXP_74HC153_BANK_MASK) ? pdata->gpio_pin_2y
					       : pdata->gpio_pin_1y;

	FUNC3(&nxp->lock);
	FUNC1(pdata->gpio_pin_s0, s0);
	FUNC1(pdata->gpio_pin_s1, s1);
	ret = FUNC0(pin);
	FUNC4(&nxp->lock);

	return ret;
}