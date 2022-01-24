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
typedef  int /*<<< orphan*/  mpz_t ;
typedef  scalar_t__ mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/ * mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MP_MAX_RADIX ; 
 scalar_t__ MP_MIN_RADIX ; 
 scalar_t__ MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MP_TRUNC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int) ; 

mp_result
FUNC7(mp_int z, mp_size radix, char *str, int limit)
{
	FUNC2(z != NULL && str != NULL && limit >= 2);
	FUNC2(radix >= MP_MIN_RADIX && radix <= MP_MAX_RADIX);

	int			cmp = 0;

	if (FUNC0(z) == 0)
	{
		*str++ = FUNC6(0, 1);
	}
	else
	{
		mp_result	res;
		mpz_t		tmp;
		char	   *h,
				   *t;

		if ((res = FUNC4(&tmp, z)) != MP_OK)
			return res;

		if (FUNC1(z) == MP_NEG)
		{
			*str++ = '-';
			--limit;
		}
		h = str;

		/* Generate digits in reverse order until finished or limit reached */
		for ( /* */ ; limit > 0; --limit)
		{
			mp_digit	d;

			if ((cmp = FUNC0(&tmp)) == 0)
				break;

			d = FUNC5(&tmp, (mp_digit) radix);
			*str++ = FUNC6(d, 1);
		}
		t = str - 1;

		/* Put digits back in correct output order */
		while (h < t)
		{
			char		tc = *h;

			*h++ = *t;
			*t-- = tc;
		}

		FUNC3(&tmp);
	}

	*str = '\0';
	if (cmp == 0)
	{
		return MP_OK;
	}
	else
	{
		return MP_TRUNC;
	}
}