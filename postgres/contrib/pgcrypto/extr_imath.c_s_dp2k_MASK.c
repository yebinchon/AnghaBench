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
typedef  int /*<<< orphan*/  mp_int ;
typedef  scalar_t__ mp_digit ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MP_DIGIT_BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(mp_int z)
{
	int			k = 0;
	mp_digit   *dp = FUNC0(z),
				d;

	if (FUNC1(z) == 1 && *dp == 0)
		return 1;

	while (*dp == 0)
	{
		k += MP_DIGIT_BIT;
		++dp;
	}

	d = *dp;
	while ((d & 1) == 0)
	{
		d >>= 1;
		++k;
	}

	return k;
}