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
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_RANGE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MP_UNDEF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

mp_result
FUNC12(mp_int a, mp_int m, mp_int c)
{
	FUNC6(a != NULL && m != NULL && c != NULL);

	if (FUNC1(a) == 0 || FUNC1(m) <= 0)
		return MP_RANGE;

	FUNC2(2);

	FUNC4(FUNC9(a, m, FUNC5(0), FUNC5(1), NULL));

	if (FUNC7(FUNC5(0), 1) != 0)
	{
		FUNC4(MP_UNDEF);
	}

	/* It is first necessary to constrain the value to the proper range */
	FUNC4(FUNC10(FUNC5(1), m, FUNC5(1)));

	/*
	 * Now, if 'a' was originally negative, the value we have is actually the
	 * magnitude of the negative representative; to get the positive value we
	 * have to subtract from the modulus.  Otherwise, the value is okay as it
	 * stands.
	 */
	if (FUNC3(a) == MP_NEG)
	{
		FUNC4(FUNC11(m, FUNC5(1), c));
	}
	else
	{
		FUNC4(FUNC8(FUNC5(1), c));
	}

	FUNC0();
	return MP_OK;
}