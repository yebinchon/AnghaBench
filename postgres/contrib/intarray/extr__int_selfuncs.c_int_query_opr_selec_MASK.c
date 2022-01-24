#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
typedef  int float4 ;
struct TYPE_3__ {scalar_t__ type; int val; int /*<<< orphan*/  left; } ;
typedef  int Selectivity ;
typedef  TYPE_1__ ITEM ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_EQ_SEL ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ OPR ; 
 scalar_t__ VAL ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  compare_val_int4 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static Selectivity
FUNC5(ITEM *item, Datum *mcelems, float4 *mcefreqs,
					int nmcelems, float4 minfreq)
{
	Selectivity selec;

	/* since this function recurses, it could be driven to stack overflow */
	FUNC3();

	if (item->type == VAL)
	{
		Datum	   *searchres;

		if (mcelems == NULL)
			return (Selectivity) DEFAULT_EQ_SEL;

		searchres = (Datum *) FUNC2(&item->val, mcelems, nmcelems,
									  sizeof(Datum), compare_val_int4);
		if (searchres)
		{
			/*
			 * The element is in MCELEM.  Return precise selectivity (or at
			 * least as precise as ANALYZE could find out).
			 */
			selec = mcefreqs[searchres - mcelems];
		}
		else
		{
			/*
			 * The element is not in MCELEM.  Punt, but assume that the
			 * selectivity cannot be more than minfreq / 2.
			 */
			selec = FUNC1(DEFAULT_EQ_SEL, minfreq / 2);
		}
	}
	else if (item->type == OPR)
	{
		/* Current query node is an operator */
		Selectivity s1,
					s2;

		s1 = FUNC5(item - 1, mcelems, mcefreqs, nmcelems,
								 minfreq);
		switch (item->val)
		{
			case (int32) '!':
				selec = 1.0 - s1;
				break;

			case (int32) '&':
				s2 = FUNC5(item + item->left, mcelems, mcefreqs,
										 nmcelems, minfreq);
				selec = s1 * s2;
				break;

			case (int32) '|':
				s2 = FUNC5(item + item->left, mcelems, mcefreqs,
										 nmcelems, minfreq);
				selec = s1 + s2 - s1 * s2;
				break;

			default:
				FUNC4(ERROR, "unrecognized operator: %d", item->val);
				selec = 0;		/* keep compiler quiet */
				break;
		}
	}
	else
	{
		FUNC4(ERROR, "unrecognized int query item type: %u", item->type);
		selec = 0;				/* keep compiler quiet */
	}

	/* Clamp intermediate results to stay sane despite roundoff error */
	FUNC0(selec);

	return selec;
}