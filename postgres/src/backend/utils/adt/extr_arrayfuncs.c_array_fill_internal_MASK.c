#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
struct TYPE_7__ {scalar_t__ element_type; int typlen; int typbyval; char typalign; } ;
struct TYPE_6__ {TYPE_1__* flinfo; } ;
struct TYPE_5__ {scalar_t__ fn_extra; int /*<<< orphan*/  fn_mcxt; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_3__ ArrayMetaState ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,char,char*) ; 
 int FUNC7 (int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_SUBSCRIPT_ERROR ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int MAXDIM ; 
 scalar_t__ MaxAllocSize ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,char) ; 
 int /*<<< orphan*/ * FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC16 (int,int*,int*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int*,int*,char*) ; 

__attribute__((used)) static ArrayType *
FUNC22(ArrayType *dims, ArrayType *lbs,
					Datum value, bool isnull, Oid elmtype,
					FunctionCallInfo fcinfo)
{
	ArrayType  *result;
	int		   *dimv;
	int		   *lbsv;
	int			ndims;
	int			nitems;
	int			deflbs[MAXDIM];
	int16		elmlen;
	bool		elmbyval;
	char		elmalign;
	ArrayMetaState *my_extra;

	/*
	 * Params checks
	 */
	if (FUNC2(dims) > 1)
		FUNC17(ERROR,
				(FUNC18(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
				 FUNC20("wrong number of array subscripts"),
				 FUNC19("Dimension array must be one dimensional.")));

	if (FUNC12(dims))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC20("dimension values cannot be null")));

	dimv = (int *) FUNC0(dims);
	ndims = (FUNC2(dims) > 0) ? FUNC1(dims)[0] : 0;

	if (ndims < 0)				/* we do allow zero-dimension arrays */
		FUNC17(ERROR,
				(FUNC18(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC20("invalid number of dimensions: %d", ndims)));
	if (ndims > MAXDIM)
		FUNC17(ERROR,
				(FUNC18(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC20("number of array dimensions (%d) exceeds the maximum allowed (%d)",
						ndims, MAXDIM)));

	if (lbs != NULL)
	{
		if (FUNC2(lbs) > 1)
			FUNC17(ERROR,
					(FUNC18(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
					 FUNC20("wrong number of array subscripts"),
					 FUNC19("Dimension array must be one dimensional.")));

		if (FUNC12(lbs))
			FUNC17(ERROR,
					(FUNC18(ERRCODE_NULL_VALUE_NOT_ALLOWED),
					 FUNC20("dimension values cannot be null")));

		if (ndims != ((FUNC2(lbs) > 0) ? FUNC1(lbs)[0] : 0))
			FUNC17(ERROR,
					(FUNC18(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
					 FUNC20("wrong number of array subscripts"),
					 FUNC19("Low bound array has different size than dimensions array.")));

		lbsv = (int *) FUNC0(lbs);
	}
	else
	{
		int			i;

		for (i = 0; i < MAXDIM; i++)
			deflbs[i] = 1;

		lbsv = deflbs;
	}

	nitems = FUNC7(ndims, dimv);

	/* fast track for empty array */
	if (nitems <= 0)
		return FUNC15(elmtype);

	/*
	 * We arrange to look up info about element type only once per series of
	 * calls, assuming the element type doesn't change underneath us.
	 */
	my_extra = (ArrayMetaState *) fcinfo->flinfo->fn_extra;
	if (my_extra == NULL)
	{
		fcinfo->flinfo->fn_extra = FUNC9(fcinfo->flinfo->fn_mcxt,
													  sizeof(ArrayMetaState));
		my_extra = (ArrayMetaState *) fcinfo->flinfo->fn_extra;
		my_extra->element_type = InvalidOid;
	}

	if (my_extra->element_type != elmtype)
	{
		/* Get info about element type */
		FUNC21(elmtype,
							 &my_extra->typlen,
							 &my_extra->typbyval,
							 &my_extra->typalign);
		my_extra->element_type = elmtype;
	}

	elmlen = my_extra->typlen;
	elmbyval = my_extra->typbyval;
	elmalign = my_extra->typalign;

	/* compute required space */
	if (!isnull)
	{
		int			i;
		char	   *p;
		int			nbytes;
		int			totbytes;

		/* make sure data is not toasted */
		if (elmlen == -1)
			value = FUNC11(FUNC10(value));

		nbytes = FUNC13(0, elmlen, value);
		nbytes = FUNC14(nbytes, elmalign);
		FUNC8(nbytes > 0);

		totbytes = nbytes * nitems;

		/* check for overflow of multiplication or total request */
		if (totbytes / nbytes != nitems ||
			!FUNC5(totbytes))
			FUNC17(ERROR,
					(FUNC18(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC20("array size exceeds the maximum allowed (%d)",
							(int) MaxAllocSize)));

		/*
		 * This addition can't overflow, but it might cause us to go past
		 * MaxAllocSize.  We leave it to palloc to complain in that case.
		 */
		totbytes += FUNC3(ndims);

		result = FUNC16(ndims, dimv, lbsv, totbytes,
									   elmtype, 0);

		p = FUNC0(result);
		for (i = 0; i < nitems; i++)
			p += FUNC6(value, elmlen, elmbyval, elmalign, p);
	}
	else
	{
		int			nbytes;
		int			dataoffset;

		dataoffset = FUNC4(ndims, nitems);
		nbytes = dataoffset;

		result = FUNC16(ndims, dimv, lbsv, nbytes,
									   elmtype, dataoffset);

		/* create_array_envelope already zeroed the bitmap, so we're done */
	}

	return result;
}