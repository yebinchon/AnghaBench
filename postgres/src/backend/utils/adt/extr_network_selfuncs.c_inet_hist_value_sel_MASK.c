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
typedef  int /*<<< orphan*/  inet ;
typedef  double Selectivity ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_CONSIDERED_ELEMS ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 double FUNC4 (double,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Selectivity
FUNC5(Datum *values, int nvalues, Datum constvalue,
					int opr_codenum)
{
	Selectivity match = 0.0;
	inet	   *query,
			   *left,
			   *right;
	int			i,
				k,
				n;
	int			left_order,
				right_order,
				left_divider,
				right_divider;

	/* guard against zero-divide below */
	if (nvalues <= 1)
		return 0.0;

	/* if there are too many histogram elements, decimate to limit runtime */
	k = (nvalues - 2) / MAX_CONSIDERED_ELEMS + 1;

	query = FUNC0(constvalue);

	/* "left" is the left boundary value of the current bucket ... */
	left = FUNC0(values[0]);
	left_order = FUNC3(left, query, opr_codenum);

	n = 0;
	for (i = k; i < nvalues; i += k)
	{
		/* ... and "right" is the right boundary value */
		right = FUNC0(values[i]);
		right_order = FUNC3(right, query, opr_codenum);

		if (left_order == 0 && right_order == 0)
		{
			/* The whole bucket matches, since both endpoints do. */
			match += 1.0;
		}
		else if ((left_order <= 0 && right_order >= 0) ||
				 (left_order >= 0 && right_order <= 0))
		{
			/* Partial bucket match. */
			left_divider = FUNC2(left, query, opr_codenum);
			right_divider = FUNC2(right, query, opr_codenum);

			if (left_divider >= 0 || right_divider >= 0)
				match += 1.0 / FUNC4(2.0, FUNC1(left_divider, right_divider));
		}

		/* Shift the variables. */
		left = right;
		left_order = right_order;

		/* Count the number of buckets considered. */
		n++;
	}

	return match / n;
}