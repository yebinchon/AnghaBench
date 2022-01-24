#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  bits8 ;
struct TYPE_13__ {int ndim; int /*<<< orphan*/  elemtype; scalar_t__ dataoffset; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ ArrayType ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 int* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int MAXDIM ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int*,int*,char*,int /*<<< orphan*/ *,int*,int*,int,int,char) ; 
 int FUNC14 (char*,int /*<<< orphan*/ *,int,int*,int*,int*,int*,int,int,char) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC20 (int*,int*,int) ; 
 scalar_t__ FUNC21 (int) ; 

Datum
FUNC22(Datum arraydatum,
				int nSubscripts,
				int *upperIndx,
				int *lowerIndx,
				bool *upperProvided,
				bool *lowerProvided,
				int arraytyplen,
				int elmlen,
				bool elmbyval,
				char elmalign)
{
	ArrayType  *array;
	ArrayType  *newarray;
	int			i,
				ndim,
			   *dim,
			   *lb,
			   *newlb;
	int			fixedDim[1],
				fixedLb[1];
	Oid			elemtype;
	char	   *arraydataptr;
	bits8	   *arraynullsptr;
	int32		dataoffset;
	int			bytes,
				span[MAXDIM];

	if (arraytyplen > 0)
	{
		/*
		 * fixed-length arrays -- currently, cannot slice these because parser
		 * labels output as being of the fixed-length array type! Code below
		 * shows how we could support it if the parser were changed to label
		 * output as a suitable varlena array type.
		 */
		FUNC16(ERROR,
				(FUNC17(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC18("slices of fixed-length arrays not implemented")));

		/*
		 * fixed-length arrays -- these are assumed to be 1-d, 0-based
		 *
		 * XXX where would we get the correct ELEMTYPE from?
		 */
		ndim = 1;
		fixedDim[0] = arraytyplen / elmlen;
		fixedLb[0] = 0;
		dim = fixedDim;
		lb = fixedLb;
		elemtype = InvalidOid;	/* XXX */
		arraydataptr = (char *) FUNC10(arraydatum);
		arraynullsptr = NULL;
	}
	else
	{
		/* detoast input array if necessary */
		array = FUNC9(arraydatum);

		ndim = FUNC4(array);
		dim = FUNC1(array);
		lb = FUNC3(array);
		elemtype = FUNC2(array);
		arraydataptr = FUNC0(array);
		arraynullsptr = FUNC5(array);
	}

	/*
	 * Check provided subscripts.  A slice exceeding the current array limits
	 * is silently truncated to the array limits.  If we end up with an empty
	 * slice, return an empty array.
	 */
	if (ndim < nSubscripts || ndim <= 0 || ndim > MAXDIM)
		return FUNC11(FUNC15(elemtype));

	for (i = 0; i < nSubscripts; i++)
	{
		if (!lowerProvided[i] || lowerIndx[i] < lb[i])
			lowerIndx[i] = lb[i];
		if (!upperProvided[i] || upperIndx[i] >= (dim[i] + lb[i]))
			upperIndx[i] = dim[i] + lb[i] - 1;
		if (lowerIndx[i] > upperIndx[i])
			return FUNC11(FUNC15(elemtype));
	}
	/* fill any missing subscript positions with full array range */
	for (; i < ndim; i++)
	{
		lowerIndx[i] = lb[i];
		upperIndx[i] = dim[i] + lb[i] - 1;
		if (lowerIndx[i] > upperIndx[i])
			return FUNC11(FUNC15(elemtype));
	}

	FUNC19(ndim, span, lowerIndx, upperIndx);

	bytes = FUNC14(arraydataptr, arraynullsptr,
							 ndim, dim, lb,
							 lowerIndx, upperIndx,
							 elmlen, elmbyval, elmalign);

	/*
	 * Currently, we put a null bitmap in the result if the source has one;
	 * could be smarter ...
	 */
	if (arraynullsptr)
	{
		dataoffset = FUNC7(ndim, FUNC8(ndim, span));
		bytes += dataoffset;
	}
	else
	{
		dataoffset = 0;			/* marker for no null bitmap */
		bytes += FUNC6(ndim);
	}

	newarray = (ArrayType *) FUNC21(bytes);
	FUNC12(newarray, bytes);
	newarray->ndim = ndim;
	newarray->dataoffset = dataoffset;
	newarray->elemtype = elemtype;
	FUNC20(FUNC1(newarray), span, ndim * sizeof(int));

	/*
	 * Lower bounds of the new array are set to 1.  Formerly (before 7.3) we
	 * copied the given lowerIndx values ... but that seems confusing.
	 */
	newlb = FUNC3(newarray);
	for (i = 0; i < ndim; i++)
		newlb[i] = 1;

	FUNC13(newarray,
						ndim, dim, lb,
						arraydataptr, arraynullsptr,
						lowerIndx, upperIndx,
						elmlen, elmbyval, elmalign);

	return FUNC11(newarray);
}