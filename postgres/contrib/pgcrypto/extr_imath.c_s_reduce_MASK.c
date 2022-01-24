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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MP_DIGIT_BIT ; 
 scalar_t__ MP_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(mp_int x, mp_int m, mp_int mu, mp_int q1, mp_int q2)
{
	mp_size		um = FUNC1(m),
				umb_p1,
				umb_m1;

	umb_p1 = (um + 1) * MP_DIGIT_BIT;
	umb_m1 = (um - 1) * MP_DIGIT_BIT;

	if (FUNC4(x, q1) != MP_OK)
		return 0;

	/* Compute q2 = floor((floor(x / b^(k-1)) * mu) / b^(k+1)) */
	FUNC6(q1, umb_m1);
	FUNC2(q1, mu, q2);
	FUNC6(q2, umb_p1);

	/* Set x = x mod b^(k+1) */
	FUNC7(x, umb_p1);

	/*
	 * Now, q is a guess for the quotient a / m. Compute x - q * m mod
	 * b^(k+1), replacing x.  This may be off by a factor of 2m, but no more
	 * than that.
	 */
	FUNC2(q2, m, q1);
	FUNC7(q1, umb_p1);
	(void) FUNC5(x, q1, x);	/* can't fail */

	/*
	 * The result may be < 0; if it is, add b^(k+1) to pin it in the proper
	 * range.
	 */
	if ((FUNC0(x) < 0) && !FUNC8(x, umb_p1))
		return 0;

	/*
	 * If x > m, we need to back it off until it is in range.  This will be
	 * required at most twice.
	 */
	if (FUNC3(x, m) >= 0)
	{
		(void) FUNC5(x, m, x);
		if (FUNC3(x, m) >= 0)
		{
			(void) FUNC5(x, m, x);
		}
	}

	/* At this point, x has been properly reduced. */
	return 1;
}