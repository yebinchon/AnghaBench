#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  int mp_digit ;
struct TYPE_11__ {int* digits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int MP_DIGIT_BIT ; 
 scalar_t__ MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_RANGE ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mp_result
FUNC11(mp_int a, mp_int b, mp_int c)
{
	FUNC6(a != NULL && b != NULL && c != NULL);
	if (FUNC2(b) == MP_NEG)
		return MP_RANGE;

	FUNC1(1);
	FUNC4(FUNC7(a, FUNC5(0)));

	(void) FUNC9(c, 1);
	for (unsigned ix = 0; ix < FUNC3(b); ++ix)
	{
		mp_digit	d = b->digits[ix];

		for (unsigned jx = 0; jx < MP_DIGIT_BIT; ++jx)
		{
			if (d & 1)
			{
				FUNC4(FUNC8(c, FUNC5(0), c));
			}

			d >>= 1;
			if (d == 0 && ix + 1 == FUNC3(b))
				break;
			FUNC4(FUNC10(FUNC5(0), FUNC5(0)));
		}
	}

	FUNC0();
	return MP_OK;
}