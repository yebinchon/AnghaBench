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
typedef  scalar_t__ u32 ;
struct rtl8366_smi {unsigned int gpio_sda; unsigned int gpio_sck; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8366_smi*) ; 

__attribute__((used)) static void FUNC5(struct rtl8366_smi *smi, u32 len, u32 *data)
{
	unsigned int sda = smi->gpio_sda;
	unsigned int sck = smi->gpio_sck;

	FUNC0(sda);

	for (*data = 0; len > 0; len--) {
		u32 u;

		FUNC4(smi);

		/* clocking */
		FUNC3(sck, 1);
		FUNC4(smi);
		u = !!FUNC2(sda);
		FUNC3(sck, 0);

		*data |= (u << (len - 1));
	}

	FUNC1(sda, 0);
}