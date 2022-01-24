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
struct TYPE_3__ {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  GistInetKey ;
typedef  TYPE_1__ GISTENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(GISTENTRY *ent,
					   int m, int n,
					   int *minfamily_p,
					   int *maxfamily_p,
					   int *minbits_p,
					   int *commonbits_p)
{
	int			minfamily,
				maxfamily,
				minbits,
				commonbits;
	unsigned char *addr;
	GistInetKey *tmp;
	int			i;

	/* Must be at least one key. */
	FUNC0(m <= n);

	/* Initialize variables using the first key. */
	tmp = FUNC1(ent[m].key);
	minfamily = maxfamily = FUNC5(tmp);
	minbits = FUNC6(tmp);
	commonbits = FUNC4(tmp);
	addr = FUNC3(tmp);

	/* Scan remaining keys. */
	for (i = m + 1; i <= n; i++)
	{
		tmp = FUNC1(ent[i].key);

		/* Determine range of family numbers */
		if (minfamily > FUNC5(tmp))
			minfamily = FUNC5(tmp);
		if (maxfamily < FUNC5(tmp))
			maxfamily = FUNC5(tmp);

		/* Find minimum minbits */
		if (minbits > FUNC6(tmp))
			minbits = FUNC6(tmp);

		/* Find minimum number of bits in common */
		if (commonbits > FUNC4(tmp))
			commonbits = FUNC4(tmp);
		if (commonbits > 0)
			commonbits = FUNC2(addr, FUNC3(tmp), commonbits);
	}

	/* Force minbits/commonbits to zero if more than one family. */
	if (minfamily != maxfamily)
		minbits = commonbits = 0;

	*minfamily_p = minfamily;
	*maxfamily_p = maxfamily;
	*minbits_p = minbits;
	*commonbits_p = commonbits;
}