#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_19__ {int /*<<< orphan*/  index; int /*<<< orphan*/ * tupdesc; scalar_t__ oneCol; } ;
struct TYPE_18__ {int t_info; } ;
typedef  scalar_t__ Size ;
typedef  scalar_t__ Pointer ;
typedef  int OffsetNumber ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__ GinState ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GIN_CAT_NORM_KEY ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int GinMaxItemSize ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int INDEX_SIZE_MASK ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 TYPE_1__* FUNC20 (TYPE_1__*,int) ; 

IndexTuple
FUNC21(GinState *ginstate,
			 OffsetNumber attnum, Datum key, GinNullCategory category,
			 Pointer data, Size dataSize, int nipd,
			 bool errorTooBig)
{
	Datum		datums[2];
	bool		isnull[2];
	IndexTuple	itup;
	uint32		newsize;

	/* Build the basic tuple: optional column number, plus key datum */
	if (ginstate->oneCol)
	{
		datums[0] = key;
		isnull[0] = (category != GIN_CAT_NORM_KEY);
	}
	else
	{
		datums[0] = FUNC12(attnum);
		isnull[0] = false;
		datums[1] = key;
		isnull[1] = (category != GIN_CAT_NORM_KEY);
	}

	itup = FUNC16(ginstate->tupdesc[attnum - 1], datums, isnull);

	/*
	 * Determine and store offset to the posting list, making sure there is
	 * room for the category byte if needed.
	 *
	 * Note: because index_form_tuple MAXALIGNs the tuple size, there may well
	 * be some wasted pad space.  Is it worth recomputing the data length to
	 * prevent that?  That would also allow us to Assert that the real data
	 * doesn't overlap the GinNullCategory byte, which this code currently
	 * takes on faith.
	 */
	newsize = FUNC7(itup);

	if (FUNC6(itup))
	{
		uint32		minsize;

		FUNC0(category != GIN_CAT_NORM_KEY);
		minsize = FUNC1(itup, ginstate) + sizeof(GinNullCategory);
		newsize = FUNC9(newsize, minsize);
	}

	newsize = FUNC11(newsize);

	FUNC5(itup, newsize);
	FUNC3(itup, nipd);

	/*
	 * Add space needed for posting list, if any.  Then check that the tuple
	 * won't be too big to store.
	 */
	newsize += dataSize;

	newsize = FUNC8(newsize);

	if (newsize > GinMaxItemSize)
	{
		if (errorTooBig)
			FUNC13(ERROR,
					(FUNC14(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC15("index row size %zu exceeds maximum %zu for index \"%s\"",
							(Size) newsize, (Size) GinMaxItemSize,
							FUNC10(ginstate->index))));
		FUNC19(itup);
		return NULL;
	}

	/*
	 * Resize tuple if needed
	 */
	if (newsize != FUNC7(itup))
	{
		itup = FUNC20(itup, newsize);

		/*
		 * PostgreSQL 9.3 and earlier did not clear this new space, so we
		 * might find uninitialized padding when reading tuples from disk.
		 */
		FUNC18((char *) itup + FUNC7(itup),
			   0, newsize - FUNC7(itup));
		/* set new size in tuple header */
		itup->t_info &= ~INDEX_SIZE_MASK;
		itup->t_info |= newsize;
	}

	/*
	 * Copy in the posting list, if provided
	 */
	if (data)
	{
		char	   *ptr = FUNC2(itup);

		FUNC17(ptr, data, dataSize);
	}

	/*
	 * Insert category byte, if needed
	 */
	if (category != GIN_CAT_NORM_KEY)
	{
		FUNC0(FUNC6(itup));
		FUNC4(itup, ginstate, category);
	}
	return itup;
}