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
typedef  int u32 ;
typedef  int u16 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct cns3xxx_gpio_chip {int /*<<< orphan*/  domain; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ GPIO_INTERRUPT_RAW_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct cns3xxx_gpio_chip* FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct irq_desc *desc)
{
	struct cns3xxx_gpio_chip *cchip = FUNC5(desc);
	struct irq_chip *chip = FUNC4(desc);
	u16 i;
	u32 reg;

	FUNC1(chip, desc); /* mask and ack the base interrupt */

	/* see which pin(s) triggered the interrupt */
	reg = FUNC0(cchip->base + GPIO_INTERRUPT_RAW_STATUS);
	for (i = 0; i < 32; i++) {
		if (reg & (1 << i)) {
			/* let the generic IRQ layer handle an interrupt */
			FUNC3(FUNC6(cchip->domain, i));
		}
	}

	FUNC2(chip, desc); /* unmask the base interrupt */
}