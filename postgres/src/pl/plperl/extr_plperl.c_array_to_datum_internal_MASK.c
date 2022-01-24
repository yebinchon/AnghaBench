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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayBuildState ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int MAXDIM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC9(AV *av, ArrayBuildState *astate,
						int *ndims, int *dims, int cur_depth,
						Oid arraytypid, Oid elemtypid, int32 typmod,
						FmgrInfo *finfo, Oid typioparam)
{
	dTHX;
	int			i;
	int			len = FUNC3(av) + 1;

	for (i = 0; i < len; i++)
	{
		/* fetch the array element */
		SV		  **svp = FUNC2(av, i, FALSE);

		/* see if this element is an array, if so get that */
		SV		   *sav = svp ? FUNC7(*svp) : NULL;

		/* multi-dimensional array? */
		if (sav)
		{
			AV		   *nav = (AV *) FUNC0(sav);

			/* dimensionality checks */
			if (cur_depth + 1 > MAXDIM)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
						 FUNC6("number of array dimensions (%d) exceeds the maximum allowed (%d)",
								cur_depth + 1, MAXDIM)));

			/* set size when at first element in this level, else compare */
			if (i == 0 && *ndims == cur_depth)
			{
				dims[*ndims] = FUNC3(nav) + 1;
				(*ndims)++;
			}
			else if (FUNC3(nav) + 1 != dims[cur_depth])
				FUNC4(ERROR,
						(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
						 FUNC6("multidimensional arrays must have array expressions with matching dimensions")));

			/* recurse to fetch elements of this sub-array */
			FUNC9(nav, astate,
									ndims, dims, cur_depth + 1,
									arraytypid, elemtypid, typmod,
									finfo, typioparam);
		}
		else
		{
			Datum		dat;
			bool		isnull;

			/* scalar after some sub-arrays at same level? */
			if (*ndims != cur_depth)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
						 FUNC6("multidimensional arrays must have array expressions with matching dimensions")));

			dat = FUNC8(svp ? *svp : NULL,
									 elemtypid,
									 typmod,
									 NULL,
									 finfo,
									 typioparam,
									 &isnull);

			(void) FUNC1(astate, dat, isnull,
									elemtypid, CurrentMemoryContext);
		}
	}
}