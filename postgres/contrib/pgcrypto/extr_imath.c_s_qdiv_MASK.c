#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mp_size ;
typedef  TYPE_1__* mp_int ;
typedef  scalar_t__ mp_digit ;
struct TYPE_7__ {scalar_t__* digits; int /*<<< orphan*/  sign; scalar_t__ used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ MP_DIGIT_BIT ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(mp_int z, mp_size p2)
{
	mp_size		ndig = p2 / MP_DIGIT_BIT,
				nbits = p2 % MP_DIGIT_BIT;
	mp_size		uz = FUNC2(z);

	if (ndig)
	{
		mp_size		mark;
		mp_digit   *to,
				   *from;

		if (ndig >= uz)
		{
			FUNC3(z);
			return;
		}

		to = FUNC1(z);
		from = to + ndig;

		for (mark = ndig; mark < uz; ++mark)
		{
			*to++ = *from++;
		}

		z->used = uz - ndig;
	}

	if (nbits)
	{
		mp_digit	d = 0,
				   *dz,
					save;
		mp_size		up = MP_DIGIT_BIT - nbits;

		uz = FUNC2(z);
		dz = FUNC1(z) + uz - 1;

		for ( /* */ ; uz > 0; --uz, --dz)
		{
			save = *dz;

			*dz = (*dz >> nbits) | (d << up);
			d = save;
		}

		FUNC0(z);
	}

	if (FUNC2(z) == 1 && z->digits[0] == 0)
		z->sign = MP_ZPOS;
}