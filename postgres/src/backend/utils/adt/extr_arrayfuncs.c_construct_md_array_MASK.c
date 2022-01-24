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
typedef  scalar_t__ int32 ;
struct TYPE_8__ {int ndim; int /*<<< orphan*/  elemtype; scalar_t__ dataoffset; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int*,int,int,int,char,int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXDIM ; 
 scalar_t__ MaxAllocSize ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,char) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 

ArrayType *
FUNC18(Datum *elems,
				   bool *nulls,
				   int ndims,
				   int *dims,
				   int *lbs,
				   Oid elmtype, int elmlen, bool elmbyval, char elmalign)
{
	ArrayType  *result;
	bool		hasnulls;
	int32		nbytes;
	int32		dataoffset;
	int			i;
	int			nelems;

	if (ndims < 0)				/* we do allow zero-dimension arrays */
		FUNC13(ERROR,
				(FUNC14(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC15("invalid number of dimensions: %d", ndims)));
	if (ndims > MAXDIM)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC15("number of array dimensions (%d) exceeds the maximum allowed (%d)",
						ndims, MAXDIM)));

	nelems = FUNC5(ndims, dims);

	/* if ndims <= 0 or any dims[i] == 0, return empty array */
	if (nelems <= 0)
		return FUNC12(elmtype);

	/* compute required space */
	nbytes = 0;
	hasnulls = false;
	for (i = 0; i < nelems; i++)
	{
		if (nulls && nulls[i])
		{
			hasnulls = true;
			continue;
		}
		/* make sure data is not toasted */
		if (elmlen == -1)
			elems[i] = FUNC8(FUNC7(elems[i]));
		nbytes = FUNC10(nbytes, elmlen, elems[i]);
		nbytes = FUNC11(nbytes, elmalign);
		/* check for overflow of total request */
		if (!FUNC4(nbytes))
			FUNC13(ERROR,
					(FUNC14(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC15("array size exceeds the maximum allowed (%d)",
							(int) MaxAllocSize)));
	}

	/* Allocate and initialize result array */
	if (hasnulls)
	{
		dataoffset = FUNC3(ndims, nelems);
		nbytes += dataoffset;
	}
	else
	{
		dataoffset = 0;			/* marker for no null bitmap */
		nbytes += FUNC2(ndims);
	}
	result = (ArrayType *) FUNC17(nbytes);
	FUNC9(result, nbytes);
	result->ndim = ndims;
	result->dataoffset = dataoffset;
	result->elemtype = elmtype;
	FUNC16(FUNC0(result), dims, ndims * sizeof(int));
	FUNC16(FUNC1(result), lbs, ndims * sizeof(int));

	FUNC6(result,
				 elems, nulls, nelems,
				 elmlen, elmbyval, elmalign,
				 false);

	return result;
}