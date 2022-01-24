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
struct rtl8366_smi {unsigned int gpio_sda; unsigned int gpio_sck; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8366_smi*) ; 

__attribute__((used)) static void FUNC3(struct rtl8366_smi *smi)
{
	unsigned int sda = smi->gpio_sda;
	unsigned int sck = smi->gpio_sck;

	/*
	 * Set GPIO pins to output mode, with initial state:
	 * SCK = 0, SDA = 1
	 */
	FUNC0(sck, 0);
	FUNC0(sda, 1);
	FUNC2(smi);

	/* CLK 1: 0 -> 1, 1 -> 0 */
	FUNC1(sck, 1);
	FUNC2(smi);
	FUNC1(sck, 0);
	FUNC2(smi);

	/* CLK 2: */
	FUNC1(sck, 1);
	FUNC2(smi);
	FUNC1(sda, 0);
	FUNC2(smi);
	FUNC1(sck, 0);
	FUNC2(smi);
	FUNC1(sda, 1);
}