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
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 int MP_DIGIT_BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(mp_int z)
{
	mp_size		uz = FUNC1(z),
				k = 0;
	mp_digit   *dz = FUNC0(z),
				d;

	while (uz > 1)
	{
		if (*dz++ != 0)
			return -1;
		k += MP_DIGIT_BIT;
		--uz;
	}

	d = *dz;
	while (d > 1)
	{
		if (d & 1)
			return -1;
		++k;
		d >>= 1;
	}

	return (int) k;
}