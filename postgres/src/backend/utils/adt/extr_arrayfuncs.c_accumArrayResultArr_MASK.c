#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char bits8 ;
struct TYPE_5__ {scalar_t__ array_type; int ndims; char* dims; int* lbs; int abytes; char* data; int nbytes; char* nullbitmap; int nitems; int aitems; int /*<<< orphan*/  mcontext; } ;
typedef  scalar_t__ Pointer ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_1__ ArrayBuildStateArr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_SUBSCRIPT_ERROR ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int MAXDIM ; 
 void* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 TYPE_1__* FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (char*,int) ; 

ArrayBuildStateArr *
FUNC23(ArrayBuildStateArr *astate,
					Datum dvalue, bool disnull,
					Oid array_type,
					MemoryContext rcontext)
{
	ArrayType  *arg;
	MemoryContext oldcontext;
	int		   *dims,
			   *lbs,
				ndims,
				nitems,
				ndatabytes;
	char	   *data;
	int			i;

	/*
	 * We disallow accumulating null subarrays.  Another plausible definition
	 * is to ignore them, but callers that want that can just skip calling
	 * this function.
	 */
	if (disnull)
		FUNC15(ERROR,
				(FUNC16(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC17("cannot accumulate null arrays")));

	/* Detoast input array in caller's context */
	arg = FUNC10(dvalue);

	if (astate == NULL)
		astate = FUNC18(array_type, InvalidOid, rcontext, true);
	else
		FUNC9(astate->array_type == array_type);

	oldcontext = FUNC13(astate->mcontext);

	/* Collect this input's dimensions */
	ndims = FUNC5(arg);
	dims = FUNC2(arg);
	lbs = FUNC4(arg);
	data = FUNC1(arg);
	nitems = FUNC8(ndims, dims);
	ndatabytes = FUNC7(arg) - FUNC0(arg);

	if (astate->ndims == 0)
	{
		/* First input; check/save the dimensionality info */

		/* Should we allow empty inputs and just produce an empty output? */
		if (ndims == 0)
			FUNC15(ERROR,
					(FUNC16(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
					 FUNC17("cannot accumulate empty arrays")));
		if (ndims + 1 > MAXDIM)
			FUNC15(ERROR,
					(FUNC16(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC17("number of array dimensions (%d) exceeds the maximum allowed (%d)",
							ndims + 1, MAXDIM)));

		/*
		 * The output array will have n+1 dimensions, with the ones after the
		 * first matching the input's dimensions.
		 */
		astate->ndims = ndims + 1;
		astate->dims[0] = 0;
		FUNC19(&astate->dims[1], dims, ndims * sizeof(int));
		astate->lbs[0] = 1;
		FUNC19(&astate->lbs[1], lbs, ndims * sizeof(int));

		/* Allocate at least enough data space for this item */
		astate->abytes = 1024;
		while (astate->abytes <= ndatabytes)
			astate->abytes *= 2;
		astate->data = (char *) FUNC20(astate->abytes);
	}
	else
	{
		/* Second or later input: must match first input's dimensionality */
		if (astate->ndims != ndims + 1)
			FUNC15(ERROR,
					(FUNC16(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
					 FUNC17("cannot accumulate arrays of different dimensionality")));
		for (i = 0; i < ndims; i++)
		{
			if (astate->dims[i + 1] != dims[i] || astate->lbs[i + 1] != lbs[i])
				FUNC15(ERROR,
						(FUNC16(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
						 FUNC17("cannot accumulate arrays of different dimensionality")));
		}

		/* Enlarge data space if needed */
		if (astate->nbytes + ndatabytes > astate->abytes)
		{
			astate->abytes = FUNC12(astate->abytes * 2,
								 astate->nbytes + ndatabytes);
			astate->data = (char *) FUNC22(astate->data, astate->abytes);
		}
	}

	/*
	 * Copy the data portion of the sub-array.  Note we assume that the
	 * advertised data length of the sub-array is properly aligned.  We do not
	 * have to worry about detoasting elements since whatever's in the
	 * sub-array should be OK already.
	 */
	FUNC19(astate->data + astate->nbytes, data, ndatabytes);
	astate->nbytes += ndatabytes;

	/* Deal with null bitmap if needed */
	if (astate->nullbitmap || FUNC3(arg))
	{
		int			newnitems = astate->nitems + nitems;

		if (astate->nullbitmap == NULL)
		{
			/*
			 * First input with nulls; we must retrospectively handle any
			 * previous inputs by marking all their items non-null.
			 */
			astate->aitems = 256;
			while (astate->aitems <= newnitems)
				astate->aitems *= 2;
			astate->nullbitmap = (bits8 *) FUNC20((astate->aitems + 7) / 8);
			FUNC14(astate->nullbitmap, 0,
							  NULL, 0,
							  astate->nitems);
		}
		else if (newnitems > astate->aitems)
		{
			astate->aitems = FUNC12(astate->aitems * 2, newnitems);
			astate->nullbitmap = (bits8 *)
				FUNC22(astate->nullbitmap, (astate->aitems + 7) / 8);
		}
		FUNC14(astate->nullbitmap, astate->nitems,
						  FUNC6(arg), 0,
						  nitems);
	}

	astate->nitems += nitems;
	astate->dims[0] += 1;

	FUNC13(oldcontext);

	/* Release detoasted copy if any */
	if ((Pointer) arg != FUNC11(dvalue))
		FUNC21(arg);

	return astate;
}