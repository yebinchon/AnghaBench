#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_20__ {void* sign; } ;

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
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 

mp_result
FUNC15(mp_int a, mp_int b, mp_int c)
{
	FUNC6(a != NULL && b != NULL && c != NULL);

	int			ca = FUNC1(a);
	int			cb = FUNC1(b);

	if (ca == 0 && cb == 0)
	{
		return MP_UNDEF;
	}
	else if (ca == 0)
	{
		return FUNC7(b, c);
	}
	else if (cb == 0)
	{
		return FUNC7(a, c);
	}

	FUNC2(3);
	FUNC4(FUNC8(a, FUNC5(0)));
	FUNC4(FUNC8(b, FUNC5(1)));

	FUNC5(0)->sign = MP_ZPOS;
	FUNC5(1)->sign = MP_ZPOS;

	int			k = 0;

	{							/* Divide out common factors of 2 from u and v */
		int			div2_u = FUNC12(FUNC5(0));
		int			div2_v = FUNC12(FUNC5(1));

		k = FUNC3(div2_u, div2_v);
		FUNC13(FUNC5(0), (mp_size) k);
		FUNC13(FUNC5(1), (mp_size) k);
	}

	if (FUNC9(FUNC5(0)))
	{
		FUNC4(FUNC10(FUNC5(1), FUNC5(2)));
	}
	else
	{
		FUNC4(FUNC8(FUNC5(0), FUNC5(2)));
	}

	for (;;)
	{
		FUNC13(FUNC5(2), FUNC12(FUNC5(2)));

		if (FUNC1(FUNC5(2)) > 0)
		{
			FUNC4(FUNC8(FUNC5(2), FUNC5(0)));
		}
		else
		{
			FUNC4(FUNC10(FUNC5(2), FUNC5(1)));
		}

		FUNC4(FUNC11(FUNC5(0), FUNC5(1), FUNC5(2)));

		if (FUNC1(FUNC5(2)) == 0)
			break;
	}

	FUNC4(FUNC7(FUNC5(0), c));
	if (!FUNC14(c, (mp_size) k))
		FUNC4(MP_MEMORY);

	FUNC0();
	return MP_OK;
}