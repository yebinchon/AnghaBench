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
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_RANGE ; 
 int /*<<< orphan*/  MP_UNDEF ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

mp_result
FUNC12(mp_int a, mp_int b, mp_int m, mp_int c)
{
	FUNC7(a != NULL && b != NULL && c != NULL && m != NULL);

	/* Zero moduli and negative exponents are not considered. */
	if (FUNC1(m) == 0)
		return MP_UNDEF;
	if (FUNC1(b) < 0)
		return MP_RANGE;

	mp_size		um = FUNC4(m);

	FUNC2(3);
	FUNC5(FUNC3(FUNC6(0), 2 * um));
	FUNC5(FUNC3(FUNC6(1), 2 * um));

	mp_int		s;

	if (c == b || c == m)
	{
		FUNC5(FUNC3(FUNC6(2), 2 * um));
		s = FUNC6(2);
	}
	else
	{
		s = c;
	}

	FUNC5(FUNC9(a, m, FUNC6(0)));
	FUNC5(FUNC10(FUNC6(1), m));
	FUNC5(FUNC11(FUNC6(0), b, m, FUNC6(1), s));
	FUNC5(FUNC8(s, c));

	FUNC0();
	return MP_OK;
}