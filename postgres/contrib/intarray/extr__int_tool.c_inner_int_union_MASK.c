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
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 

ArrayType *
FUNC8(ArrayType *a, ArrayType *b)
{
	ArrayType  *r = NULL;

	FUNC3(a);
	FUNC3(b);

	if (FUNC0(a) && FUNC0(b))
		return FUNC6(0);
	if (FUNC0(a))
		r = FUNC5(b);
	if (FUNC0(b))
		r = FUNC5(a);

	if (!r)
	{
		int			na = FUNC1(a),
					nb = FUNC1(b);
		int		   *da = FUNC2(a),
				   *db = FUNC2(b);
		int			i,
					j,
				   *dr;

		r = FUNC6(na + nb);
		dr = FUNC2(r);

		/* union */
		i = j = 0;
		while (i < na && j < nb)
		{
			if (da[i] == db[j])
			{
				*dr++ = da[i++];
				j++;
			}
			else if (da[i] < db[j])
				*dr++ = da[i++];
			else
				*dr++ = db[j++];
		}

		while (i < na)
			*dr++ = da[i++];
		while (j < nb)
			*dr++ = db[j++];

		r = FUNC7(r, dr - FUNC2(r));
	}

	if (FUNC1(r) > 1)
		r = FUNC4(r);

	return r;
}