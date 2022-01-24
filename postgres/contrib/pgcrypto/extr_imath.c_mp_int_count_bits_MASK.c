#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  int mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  int mp_digit ;
struct TYPE_4__ {scalar_t__* digits; } ;

/* Variables and functions */
 int MP_DIGIT_BIT ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

mp_result
FUNC2(mp_int z)
{
	FUNC1(z != NULL);

	mp_size		uz = FUNC0(z);

	if (uz == 1 && z->digits[0] == 0)
		return 1;

	--uz;
	mp_size		nbits = uz * MP_DIGIT_BIT;
	mp_digit	d = z->digits[uz];

	while (d != 0)
	{
		d >>= 1;
		++nbits;
	}

	return nbits;
}