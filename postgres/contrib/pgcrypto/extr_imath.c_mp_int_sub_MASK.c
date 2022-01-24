#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  scalar_t__ mp_sign ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  scalar_t__ mp_digit ;
struct TYPE_12__ {int used; scalar_t__ sign; scalar_t__* digits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 scalar_t__ MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ MP_ZPOS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

mp_result
FUNC10(mp_int a, mp_int b, mp_int c)
{
	FUNC5(a != NULL && b != NULL && c != NULL);

	mp_size		ua = FUNC4(a);
	mp_size		ub = FUNC4(b);
	mp_size		max = FUNC1(ua, ub);

	if (FUNC3(a) != FUNC3(b))
	{
		/* Different signs -- add magnitudes and keep sign of a */
		if (!FUNC6(c, max))
			return MP_MEMORY;

		mp_digit	carry = FUNC7(FUNC2(a), FUNC2(b), FUNC2(c), ua, ub);
		mp_size		uc = max;

		if (carry)
		{
			if (!FUNC6(c, max + 1))
				return MP_MEMORY;

			c->digits[max] = carry;
			++uc;
		}

		c->used = uc;
		c->sign = a->sign;

	}
	else
	{
		/* Same signs -- subtract magnitudes */
		if (!FUNC6(c, max))
			return MP_MEMORY;
		mp_int		x,
					y;
		mp_sign		osign;

		int			cmp = FUNC8(a, b);

		if (cmp >= 0)
		{
			x = a;
			y = b;
			osign = MP_ZPOS;
		}
		else
		{
			x = b;
			y = a;
			osign = MP_NEG;
		}

		if (FUNC3(a) == MP_NEG && cmp != 0)
			osign = 1 - osign;

		FUNC9(FUNC2(x), FUNC2(y), FUNC2(c), FUNC4(x), FUNC4(y));
		c->used = x->used;
		FUNC0(c);

		c->sign = osign;
	}

	return MP_OK;
}