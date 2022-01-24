#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_sign ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;
struct TYPE_12__ {int alloc; int used; int /*<<< orphan*/  sign; int /*<<< orphan*/ * digits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int default_precision ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int FUNC13 (int) ; 

mp_result
FUNC14(mp_int a, mp_int b, mp_int c)
{
	FUNC6(a != NULL && b != NULL && c != NULL);

	/* If either input is zero, we can shortcut multiplication */
	if (FUNC7(a) == 0 || FUNC7(b) == 0)
	{
		FUNC8(c);
		return MP_OK;
	}

	/* Output is positive if inputs have same sign, otherwise negative */
	mp_sign		osign = (FUNC3(a) == FUNC3(b)) ? MP_ZPOS : MP_NEG;

	/*
	 * If the output is not identical to any of the inputs, we'll write the
	 * results directly; otherwise, allocate a temporary space.
	 */
	mp_size		ua = FUNC4(a);
	mp_size		ub = FUNC4(b);
	mp_size		osize = FUNC1(ua, ub);

	osize = 4 * ((osize + 1) / 2);

	mp_digit   *out;
	mp_size		p = 0;

	if (c == a || c == b)
	{
		p = FUNC1(FUNC13(osize), default_precision);

		if ((out = FUNC9(p)) == NULL)
			return MP_MEMORY;
	}
	else
	{
		if (!FUNC12(c, osize))
			return MP_MEMORY;

		out = FUNC2(c);
	}
	FUNC5(out, osize);

	if (!FUNC11(FUNC2(a), FUNC2(b), out, ua, ub))
		return MP_MEMORY;

	/*
	 * If we allocated a new buffer, get rid of whatever memory c was already
	 * using, and fix up its fields to reflect that.
	 */
	if (out != FUNC2(c))
	{
		if ((void *) FUNC2(c) != (void *) c)
			FUNC10(FUNC2(c));
		c->digits = out;
		c->alloc = p;
	}

	c->used = osize;			/* might not be true, but we'll fix it ... */
	FUNC0(c);					/* ... right here */
	c->sign = osign;

	return MP_OK;
}