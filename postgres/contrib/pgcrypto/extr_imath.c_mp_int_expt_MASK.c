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
typedef  scalar_t__ mp_small ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_RANGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mp_result
FUNC10(mp_int a, mp_small b, mp_int c)
{
	FUNC4(c != NULL);
	if (b < 0)
		return MP_RANGE;

	FUNC1(1);
	FUNC2(FUNC6(a, FUNC3(0)));

	(void) FUNC8(c, 1);
	unsigned int v = FUNC5(b);

	while (v != 0)
	{
		if (v & 1)
		{
			FUNC2(FUNC7(c, FUNC3(0), c));
		}

		v >>= 1;
		if (v == 0)
			break;

		FUNC2(FUNC9(FUNC3(0), FUNC3(0)));
	}

	FUNC0();
	return MP_OK;
}