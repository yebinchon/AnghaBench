#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_size ;
typedef  TYPE_1__* mp_int ;
typedef  unsigned int mp_digit ;
struct TYPE_6__ {unsigned int* digits; } ;

/* Variables and functions */
 int MP_DIGIT_BIT ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(mp_int a, mp_int b)
{
	mp_digit	d = b->digits[FUNC0(b) - 1];
	int			k = 0;

	while (d < (1u << (mp_digit) (MP_DIGIT_BIT - 1)))
	{							/* d < (MP_RADIX / 2) */
		d <<= 1;
		++k;
	}

	/* These multiplications can't fail */
	if (k != 0)
	{
		(void) FUNC1(a, (mp_size) k);
		(void) FUNC1(b, (mp_size) k);
	}

	return k;
}