#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_size ;
typedef  scalar_t__ mp_sign ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_19__ {int* digits; void* sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_UNDEF ; 
 void* MP_ZPOS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*) ; 

mp_result
FUNC14(mp_int a, mp_int b, mp_int q, mp_int r)
{
	FUNC6(a != NULL && b != NULL && q != r);

	int			cmp;
	mp_result	res = MP_OK;
	mp_int		qout,
				rout;
	mp_sign		sa = FUNC3(a);
	mp_sign		sb = FUNC3(b);

	if (FUNC1(b) == 0)
	{
		return MP_UNDEF;
	}
	else if ((cmp = FUNC12(a, b)) < 0)
	{
		/*
		 * If |a| < |b|, no division is required: q = 0, r = a
		 */
		if (r && (res = FUNC7(a, r)) != MP_OK)
			return res;

		if (q)
			FUNC8(q);

		return MP_OK;
	}
	else if (cmp == 0)
	{
		/*
		 * If |a| = |b|, no division is required: q = 1 or -1, r = 0
		 */
		if (r)
			FUNC8(r);

		if (q)
		{
			FUNC8(q);
			q->digits[0] = 1;

			if (sa != sb)
				q->sign = MP_NEG;
		}

		return MP_OK;
	}

	/*
	 * When |a| > |b|, real division is required.  We need someplace to store
	 * quotient and remainder, but q and r are allowed to be NULL or to
	 * overlap with the inputs.
	 */
	FUNC2(2);
	int			lg;

	if ((lg = FUNC9(b)) < 0)
	{
		if (q && b != q)
		{
			FUNC4(FUNC7(a, q));
			qout = q;
		}
		else
		{
			FUNC4(FUNC7(a, FUNC5(0)));
			qout = FUNC5(0);
		}

		if (r && a != r)
		{
			FUNC4(FUNC7(b, r));
			rout = r;
		}
		else
		{
			FUNC4(FUNC7(b, FUNC5(1)));
			rout = FUNC5(1);
		}

		FUNC4(FUNC13(qout, rout));
	}
	else
	{
		if (q)
			FUNC4(FUNC7(a, q));
		if (r)
			FUNC4(FUNC7(a, r));

		if (q)
			FUNC10(q, (mp_size) lg);
		qout = q;
		if (r)
			FUNC11(r, (mp_size) lg);
		rout = r;
	}

	/* Recompute signs for output */
	if (rout)
	{
		rout->sign = sa;
		if (FUNC1(rout) == 0)
			rout->sign = MP_ZPOS;
	}
	if (qout)
	{
		qout->sign = (sa == sb) ? MP_ZPOS : MP_NEG;
		if (FUNC1(qout) == 0)
			qout->sign = MP_ZPOS;
	}

	if (q)
		FUNC4(FUNC7(qout, q));
	if (r)
		FUNC4(FUNC7(rout, r));
	FUNC0();
	return res;
}