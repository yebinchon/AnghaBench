#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_small ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_24__ {void* sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_UNDEF ; 
 void* MP_ZPOS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,TYPE_1__*) ; 

mp_result
FUNC14(mp_int a, mp_small b, mp_int c)
{
	FUNC5(a != NULL && c != NULL && b > 0);

	if (b == 1)
	{
		return FUNC7(a, c);
	}
	bool		flips = false;

	if (FUNC2(a) == MP_NEG)
	{
		if (b % 2 == 0)
		{
			return MP_UNDEF;	/* root does not exist for negative a with
								 * even b */
		}
		else
		{
			flips = true;
		}
	}

	FUNC1(5);
	FUNC3(FUNC7(a, FUNC4(0)));
	FUNC3(FUNC7(a, FUNC4(1)));
	FUNC4(0)->sign = MP_ZPOS;
	FUNC4(1)->sign = MP_ZPOS;

	for (;;)
	{
		FUNC3(FUNC9(FUNC4(1), b, FUNC4(2)));

		if (FUNC6(FUNC4(2), FUNC4(0)) <= 0)
			break;

		FUNC3(FUNC12(FUNC4(2), FUNC4(0), FUNC4(2)));
		FUNC3(FUNC9(FUNC4(1), b - 1, FUNC4(3)));
		FUNC3(FUNC10(FUNC4(3), b, FUNC4(3)));
		FUNC3(FUNC8(FUNC4(2), FUNC4(3), FUNC4(4), NULL));
		FUNC3(FUNC12(FUNC4(1), FUNC4(4), FUNC4(4)));

		if (FUNC6(FUNC4(1), FUNC4(4)) == 0)
		{
			FUNC3(FUNC13(FUNC4(4), 1, FUNC4(4)));
		}
		FUNC3(FUNC7(FUNC4(4), FUNC4(1)));
	}

	FUNC3(FUNC7(FUNC4(1), c));

	/* If the original value of a was negative, flip the output sign. */
	if (flips)
		(void) FUNC11(c, c);	/* cannot fail */

	FUNC0();
	return MP_OK;
}