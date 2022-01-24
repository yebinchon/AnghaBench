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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(inet *boundary, inet *query, int opr_codenum)
{
	if (FUNC5(boundary) == FUNC5(query) &&
		FUNC2(boundary, query, opr_codenum) == 0)
	{
		int			min_bits,
					decisive_bits;

		min_bits = FUNC0(FUNC4(boundary), FUNC4(query));

		/*
		 * Set decisive_bits to the masklen of the one that should contain the
		 * other according to the operator.
		 */
		if (opr_codenum < 0)
			decisive_bits = FUNC4(boundary);
		else if (opr_codenum > 0)
			decisive_bits = FUNC4(query);
		else
			decisive_bits = min_bits;

		/*
		 * Now return the number of non-common decisive bits.  (This will be
		 * zero if the boundary and query in fact match, else positive.)
		 */
		if (min_bits > 0)
			return decisive_bits - FUNC1(FUNC3(boundary),
											  FUNC3(query),
											  min_bits);
		return decisive_bits;
	}

	return -1;
}