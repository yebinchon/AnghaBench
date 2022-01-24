#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;
struct TYPE_8__ {int alloc; int used; int /*<<< orphan*/  sign; int /*<<< orphan*/ * digits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_OK ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  default_precision ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (int) ; 

mp_result
FUNC11(mp_int a, mp_int c)
{
	FUNC5(a != NULL && c != NULL);

	/* Get a temporary buffer big enough to hold the result */
	mp_size		osize = (mp_size) 4 * ((FUNC3(a) + 1) / 2);
	mp_size		p = 0;
	mp_digit   *out;

	if (a == c)
	{
		p = FUNC10(osize);
		p = FUNC1(p, default_precision);

		if ((out = FUNC6(p)) == NULL)
			return MP_MEMORY;
	}
	else
	{
		if (!FUNC9(c, osize))
			return MP_MEMORY;

		out = FUNC2(c);
	}
	FUNC4(out, osize);

	FUNC8(FUNC2(a), out, FUNC3(a));

	/*
	 * Get rid of whatever memory c was already using, and fix up its fields
	 * to reflect the new digit array it's using
	 */
	if (out != FUNC2(c))
	{
		if ((void *) FUNC2(c) != (void *) c)
			FUNC7(FUNC2(c));
		c->digits = out;
		c->alloc = p;
	}

	c->used = osize;			/* might not be true, but we'll fix it ... */
	FUNC0(c);					/* ... right here */
	c->sign = MP_ZPOS;

	return MP_OK;
}