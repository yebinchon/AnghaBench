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
struct vars {int /*<<< orphan*/  re; } ;
struct cvec {scalar_t__ nchrs; scalar_t__ chrspace; } ;
typedef  scalar_t__ chr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  REG_CANCEL ; 
 int /*<<< orphan*/  REG_ERANGE ; 
 int /*<<< orphan*/  REG_ETOOBIG ; 
 int /*<<< orphan*/  FUNC3 (struct cvec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cvec*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 struct cvec* FUNC6 (struct vars*,int,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static struct cvec *
FUNC9(struct vars *v,			/* context */
	  chr a,					/* range start */
	  chr b,					/* range end, might equal a */
	  int cases)				/* case-independent? */
{
	int			nchrs;
	struct cvec *cv;
	chr			c,
				cc;

	if (a != b && !FUNC5(a, b))
	{
		FUNC1(REG_ERANGE);
		return NULL;
	}

	if (!cases)
	{							/* easy version */
		cv = FUNC6(v, 0, 1);
		FUNC2();
		FUNC4(cv, a, b);
		return cv;
	}

	/*
	 * When case-independent, it's hard to decide when cvec ranges are usable,
	 * so for now at least, we won't try.  We use a range for the originally
	 * specified chrs and then add on any case-equivalents that are outside
	 * that range as individual chrs.
	 *
	 * To ensure sane behavior if someone specifies a very large range, limit
	 * the allocation size to 100000 chrs (arbitrary) and check for overrun
	 * inside the loop below.
	 */
	nchrs = b - a + 1;
	if (nchrs <= 0 || nchrs > 100000)
		nchrs = 100000;

	cv = FUNC6(v, nchrs, 1);
	FUNC2();
	FUNC4(cv, a, b);

	for (c = a; c <= b; c++)
	{
		cc = FUNC7(c);
		if (cc != c &&
			(FUNC5(cc, a) || FUNC5(b, cc)))
		{
			if (cv->nchrs >= cv->chrspace)
			{
				FUNC1(REG_ETOOBIG);
				return NULL;
			}
			FUNC3(cv, cc);
		}
		cc = FUNC8(c);
		if (cc != c &&
			(FUNC5(cc, a) || FUNC5(b, cc)))
		{
			if (cv->nchrs >= cv->chrspace)
			{
				FUNC1(REG_ETOOBIG);
				return NULL;
			}
			FUNC3(cv, cc);
		}
		if (FUNC0(v->re))
		{
			FUNC1(REG_CANCEL);
			return NULL;
		}
	}

	return cv;
}