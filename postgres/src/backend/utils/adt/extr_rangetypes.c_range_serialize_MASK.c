#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
struct TYPE_14__ {int /*<<< orphan*/  type_id; TYPE_1__* rngelemtype; } ;
typedef  TYPE_2__ TypeCacheEntry ;
struct TYPE_16__ {int lower; void* val; scalar_t__ inclusive; scalar_t__ infinite; } ;
struct TYPE_15__ {int /*<<< orphan*/  rangetypid; } ;
struct TYPE_13__ {int typlen; int typbyval; char typalign; char typstorage; } ;
typedef  int Size ;
typedef  TYPE_3__ RangeType ;
typedef  TYPE_4__ RangeBound ;
typedef  char* Pointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATA_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 char RANGE_EMPTY ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 char RANGE_LB_INC ; 
 char RANGE_LB_INF ; 
 char RANGE_UB_INC ; 
 char RANGE_UB_INF ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int FUNC7 (int,void*,int,char,int,char) ; 
 char* FUNC8 (char*,void*,int,char,int,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (TYPE_2__*,TYPE_4__*,TYPE_4__*) ; 

RangeType *
FUNC14(TypeCacheEntry *typcache, RangeBound *lower, RangeBound *upper,
				bool empty)
{
	RangeType  *range;
	int			cmp;
	Size		msize;
	Pointer		ptr;
	int16		typlen;
	bool		typbyval;
	char		typalign;
	char		typstorage;
	char		flags = 0;

	/*
	 * Verify range is not invalid on its face, and construct flags value,
	 * preventing any non-canonical combinations such as infinite+inclusive.
	 */
	FUNC0(lower->lower);
	FUNC0(!upper->lower);

	if (empty)
		flags |= RANGE_EMPTY;
	else
	{
		cmp = FUNC13(typcache, lower, upper);

		/* error check: if lower bound value is above upper, it's wrong */
		if (cmp > 0)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_DATA_EXCEPTION),
					 FUNC11("range lower bound must be less than or equal to range upper bound")));

		/* if bounds are equal, and not both inclusive, range is empty */
		if (cmp == 0 && !(lower->inclusive && upper->inclusive))
			flags |= RANGE_EMPTY;
		else
		{
			/* infinite boundaries are never inclusive */
			if (lower->infinite)
				flags |= RANGE_LB_INF;
			else if (lower->inclusive)
				flags |= RANGE_LB_INC;
			if (upper->infinite)
				flags |= RANGE_UB_INF;
			else if (upper->inclusive)
				flags |= RANGE_UB_INC;
		}
	}

	/* Fetch information about range's element type */
	typlen = typcache->rngelemtype->typlen;
	typbyval = typcache->rngelemtype->typbyval;
	typalign = typcache->rngelemtype->typalign;
	typstorage = typcache->rngelemtype->typstorage;

	/* Count space for varlena header and range type's OID */
	msize = sizeof(RangeType);
	FUNC0(msize == FUNC1(msize));

	/* Count space for bounds */
	if (FUNC4(flags))
	{
		/*
		 * Make sure item to be inserted is not toasted.  It is essential that
		 * we not insert an out-of-line toast value pointer into a range
		 * object, for the same reasons that arrays and records can't contain
		 * them.  It would work to store a compressed-in-line value, but we
		 * prefer to decompress and then let compression be applied to the
		 * whole range object if necessary.  But, unlike arrays, we do allow
		 * short-header varlena objects to stay as-is.
		 */
		if (typlen == -1)
			lower->val = FUNC3(FUNC2(lower->val));

		msize = FUNC7(msize, lower->val, typbyval, typalign,
								   typlen, typstorage);
	}

	if (FUNC5(flags))
	{
		/* Make sure item to be inserted is not toasted */
		if (typlen == -1)
			upper->val = FUNC3(FUNC2(upper->val));

		msize = FUNC7(msize, upper->val, typbyval, typalign,
								   typlen, typstorage);
	}

	/* Add space for flag byte */
	msize += sizeof(char);

	/* Note: zero-fill is required here, just as in heap tuples */
	range = (RangeType *) FUNC12(msize);
	FUNC6(range, msize);

	/* Now fill in the datum */
	range->rangetypid = typcache->type_id;

	ptr = (char *) (range + 1);

	if (FUNC4(flags))
	{
		FUNC0(lower->lower);
		ptr = FUNC8(ptr, lower->val, typbyval, typalign, typlen,
						  typstorage);
	}

	if (FUNC5(flags))
	{
		FUNC0(!upper->lower);
		ptr = FUNC8(ptr, upper->val, typbyval, typalign, typlen,
						  typstorage);
	}

	*((char *) ptr) = flags;

	return range;
}