#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_28__ {void* sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_UNDEF ; 
 void* MP_ZPOS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 

mp_result
FUNC19(mp_int a, mp_int b, mp_int c, mp_int x, mp_int y)
{
	FUNC6(a != NULL && b != NULL && c != NULL && (x != NULL || y != NULL));

	mp_result	res = MP_OK;
	int			ca = FUNC1(a);
	int			cb = FUNC1(b);

	if (ca == 0 && cb == 0)
	{
		return MP_UNDEF;
	}
	else if (ca == 0)
	{
		if ((res = FUNC7(b, c)) != MP_OK)
			return res;
		FUNC15(x);
		(void) FUNC13(y, 1);
		return MP_OK;
	}
	else if (cb == 0)
	{
		if ((res = FUNC7(a, c)) != MP_OK)
			return res;
		(void) FUNC13(x, 1);
		FUNC15(y);
		return MP_OK;
	}

	/*
	 * Initialize temporaries: A:0, B:1, C:2, D:3, u:4, v:5, ou:6, ov:7
	 */
	FUNC2(8);
	FUNC4(FUNC13(FUNC5(0), 1));
	FUNC4(FUNC13(FUNC5(3), 1));
	FUNC4(FUNC10(a, FUNC5(4)));
	FUNC4(FUNC10(b, FUNC5(5)));

	/* We will work with absolute values here */
	FUNC5(4)->sign = MP_ZPOS;
	FUNC5(5)->sign = MP_ZPOS;

	int			k = 0;

	{							/* Divide out common factors of 2 from u and v */
		int			div2_u = FUNC16(FUNC5(4)),
					div2_v = FUNC16(FUNC5(5));

		k = FUNC3(div2_u, div2_v);
		FUNC17(FUNC5(4), k);
		FUNC17(FUNC5(5), k);
	}

	FUNC4(FUNC10(FUNC5(4), FUNC5(6)));
	FUNC4(FUNC10(FUNC5(5), FUNC5(7)));

	for (;;)
	{
		while (FUNC11(FUNC5(4)))
		{
			FUNC17(FUNC5(4), 1);

			if (FUNC12(FUNC5(0)) || FUNC12(FUNC5(1)))
			{
				FUNC4(FUNC8(FUNC5(0), FUNC5(7), FUNC5(0)));
				FUNC4(FUNC14(FUNC5(1), FUNC5(6), FUNC5(1)));
			}

			FUNC17(FUNC5(0), 1);
			FUNC17(FUNC5(1), 1);
		}

		while (FUNC11(FUNC5(5)))
		{
			FUNC17(FUNC5(5), 1);

			if (FUNC12(FUNC5(2)) || FUNC12(FUNC5(3)))
			{
				FUNC4(FUNC8(FUNC5(2), FUNC5(7), FUNC5(2)));
				FUNC4(FUNC14(FUNC5(3), FUNC5(6), FUNC5(3)));
			}

			FUNC17(FUNC5(2), 1);
			FUNC17(FUNC5(3), 1);
		}

		if (FUNC9(FUNC5(4), FUNC5(5)) >= 0)
		{
			FUNC4(FUNC14(FUNC5(4), FUNC5(5), FUNC5(4)));
			FUNC4(FUNC14(FUNC5(0), FUNC5(2), FUNC5(0)));
			FUNC4(FUNC14(FUNC5(1), FUNC5(3), FUNC5(1)));
		}
		else
		{
			FUNC4(FUNC14(FUNC5(5), FUNC5(4), FUNC5(5)));
			FUNC4(FUNC14(FUNC5(2), FUNC5(0), FUNC5(2)));
			FUNC4(FUNC14(FUNC5(3), FUNC5(1), FUNC5(3)));
		}

		if (FUNC1(FUNC5(4)) == 0)
		{
			if (x)
				FUNC4(FUNC10(FUNC5(2), x));
			if (y)
				FUNC4(FUNC10(FUNC5(3), y));
			if (c)
			{
				if (!FUNC18(FUNC5(5), k))
				{
					FUNC4(MP_MEMORY);
				}
				FUNC4(FUNC10(FUNC5(5), c));
			}

			break;
		}
	}

	FUNC0();
	return MP_OK;
}