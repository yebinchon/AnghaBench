#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/  mp_int ;
typedef  int mp_digit ;
struct TYPE_10__ {int /*<<< orphan*/  alloc; int /*<<< orphan*/  digits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 int MP_DIGIT_BIT ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ MP_ZPOS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static mp_result
FUNC15(mp_int a, mp_int b, mp_int m, mp_int mu, mp_int c)
{
	mp_digit	umu = FUNC5(mu);
	mp_digit   *db = FUNC3(b);
	mp_digit   *dbt = db + FUNC5(b) - 1;

	FUNC1(3);
	FUNC6(FUNC2(FUNC7(0), 4 * umu));
	FUNC6(FUNC2(FUNC7(1), 4 * umu));
	FUNC6(FUNC2(FUNC7(2), 4 * umu));
	FUNC10(FUNC7(0)->digits, FUNC7(0)->alloc);
	FUNC10(FUNC7(1)->digits, FUNC7(1)->alloc);
	FUNC10(FUNC7(2)->digits, FUNC7(2)->alloc);

	(void) FUNC13(c, 1);

	/* Take care of low-order digits */
	while (db < dbt)
	{
		mp_digit	d = *db;

		for (int i = MP_DIGIT_BIT; i > 0; --i, d >>= 1)
		{
			if (d & 1)
			{
				/* The use of a second temporary avoids allocation */
				FUNC8(c, a, FUNC7(0));
				if (!FUNC14(FUNC7(0), m, mu, FUNC7(1), FUNC7(2)))
				{
					FUNC6(MP_MEMORY);
				}
				FUNC12(FUNC7(0), c);
			}

			FUNC9(a, FUNC7(0));
			FUNC11(FUNC4(FUNC7(0)) == MP_ZPOS);
			if (!FUNC14(FUNC7(0), m, mu, FUNC7(1), FUNC7(2)))
			{
				FUNC6(MP_MEMORY);
			}
			FUNC11(FUNC4(FUNC7(0)) == MP_ZPOS);
			FUNC12(FUNC7(0), a);
		}

		++db;
	}

	/* Take care of highest-order digit */
	mp_digit	d = *dbt;

	for (;;)
	{
		if (d & 1)
		{
			FUNC8(c, a, FUNC7(0));
			if (!FUNC14(FUNC7(0), m, mu, FUNC7(1), FUNC7(2)))
			{
				FUNC6(MP_MEMORY);
			}
			FUNC12(FUNC7(0), c);
		}

		d >>= 1;
		if (!d)
			break;

		FUNC9(a, FUNC7(0));
		if (!FUNC14(FUNC7(0), m, mu, FUNC7(1), FUNC7(2)))
		{
			FUNC6(MP_MEMORY);
		}
		(void) FUNC12(FUNC7(0), a);
	}

	FUNC0();
	return MP_OK;
}