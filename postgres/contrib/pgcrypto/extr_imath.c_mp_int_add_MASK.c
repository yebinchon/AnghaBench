#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  scalar_t__ mp_digit ;
struct TYPE_13__ {int used; int /*<<< orphan*/  sign; scalar_t__* digits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

mp_result
FUNC11(mp_int a, mp_int b, mp_int c)
{
	FUNC5(a != NULL && b != NULL && c != NULL);

	mp_size		ua = FUNC4(a);
	mp_size		ub = FUNC4(b);
	mp_size		max = FUNC1(ua, ub);

	if (FUNC3(a) == FUNC3(b))
	{
		/* Same sign -- add magnitudes, preserve sign of addends */
		if (!FUNC7(c, max))
			return MP_MEMORY;

		mp_digit	carry = FUNC8(FUNC2(a), FUNC2(b), FUNC2(c), ua, ub);
		mp_size		uc = max;

		if (carry)
		{
			if (!FUNC7(c, max + 1))
				return MP_MEMORY;

			c->digits[max] = carry;
			++uc;
		}

		c->used = uc;
		c->sign = a->sign;

	}
	else
	{
		/* Different signs -- subtract magnitudes, preserve sign of greater */
		int			cmp = FUNC9(a, b); /* magnitude comparision, sign ignored */

		/*
		 * Set x to max(a, b), y to min(a, b) to simplify later code. A
		 * special case yields zero for equal magnitudes.
		 */
		mp_int		x,
					y;

		if (cmp == 0)
		{
			FUNC6(c);
			return MP_OK;
		}
		else if (cmp < 0)
		{
			x = b;
			y = a;
		}
		else
		{
			x = a;
			y = b;
		}

		if (!FUNC7(c, FUNC4(x)))
			return MP_MEMORY;

		/* Subtract smaller from larger */
		FUNC10(FUNC2(x), FUNC2(y), FUNC2(c), FUNC4(x), FUNC4(y));
		c->used = x->used;
		FUNC0(c);

		/* Give result the sign of the larger */
		c->sign = x->sign;
	}

	return MP_OK;
}