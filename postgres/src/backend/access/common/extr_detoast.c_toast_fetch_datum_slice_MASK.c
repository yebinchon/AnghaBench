#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct varlena {int dummy; } ;
struct varatt_external {int va_extsize; int /*<<< orphan*/  va_valueid; int /*<<< orphan*/  va_toastrelid; } ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_10__ {int /*<<< orphan*/  rd_att; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  SnapshotData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_1__* Relation ;
typedef  struct varlena* Pointer ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BTGreaterEqualStrategyNumber ; 
 int /*<<< orphan*/  BTLessEqualStrategyNumber ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct varlena* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_INT4GE ; 
 int /*<<< orphan*/  F_INT4LE ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct varlena*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct varlena*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TOAST_MAX_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC9 (struct varatt_external,struct varlena*) ; 
 scalar_t__ FUNC10 (struct varatt_external) ; 
 int /*<<< orphan*/  FUNC11 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC12 (struct varlena*) ; 
 scalar_t__ FUNC13 (struct varlena*) ; 
 char* FUNC14 (struct varlena*) ; 
 char* FUNC15 (struct varlena*) ; 
 int VARHDRSZ ; 
 int VARHDRSZ_SHORT ; 
 int FUNC16 (struct varlena*) ; 
 int FUNC17 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 int FUNC29 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__***,int*) ; 

__attribute__((used)) static struct varlena *
FUNC30(struct varlena *attr, int32 sliceoffset, int32 length)
{
	Relation	toastrel;
	Relation   *toastidxs;
	ScanKeyData toastkey[3];
	int			nscankeys;
	SysScanDesc toastscan;
	HeapTuple	ttup;
	TupleDesc	toasttupDesc;
	struct varlena *result;
	struct varatt_external toast_pointer;
	int32		attrsize;
	int32		residx;
	int32		nextidx;
	int			numchunks;
	int			startchunk;
	int			endchunk;
	int32		startoffset;
	int32		endoffset;
	int			totalchunks;
	Pointer		chunk;
	bool		isnull;
	char	   *chunkdata;
	int32		chunksize;
	int32		chcpystrt;
	int32		chcpyend;
	int			num_indexes;
	int			validIndex;
	SnapshotData SnapshotToast;

	if (!FUNC12(attr))
		FUNC18(ERROR, "toast_fetch_datum_slice shouldn't be called for non-ondisk datums");

	/* Must copy to access aligned fields */
	FUNC9(toast_pointer, attr);

	/*
	 * It's nonsense to fetch slices of a compressed datum unless when it's
	 * a prefix -- this isn't lo_* we can't return a compressed datum which
	 * is meaningful to toast later.
	 */
	FUNC0(!FUNC10(toast_pointer) || 0 == sliceoffset);

	attrsize = toast_pointer.va_extsize;
	totalchunks = ((attrsize - 1) / TOAST_MAX_CHUNK_SIZE) + 1;

	if (sliceoffset >= attrsize)
	{
		sliceoffset = 0;
		length = 0;
	}

	/*
	 * When fetching a prefix of a compressed external datum, account for the
	 * rawsize tracking amount of raw data, which is stored at the beginning
	 * as an int32 value).
	 */
	if (FUNC10(toast_pointer) && length > 0)
		length = length + sizeof(int32);

	if (((sliceoffset + length) > attrsize) || length < 0)
		length = attrsize - sliceoffset;

	result = (struct varlena *) FUNC22(length + VARHDRSZ);

	if (FUNC10(toast_pointer))
		FUNC7(result, length + VARHDRSZ);
	else
		FUNC6(result, length + VARHDRSZ);

	if (length == 0)
		return result;			/* Can save a lot of work at this point! */

	startchunk = sliceoffset / TOAST_MAX_CHUNK_SIZE;
	endchunk = (sliceoffset + length - 1) / TOAST_MAX_CHUNK_SIZE;
	numchunks = (endchunk - startchunk) + 1;

	startoffset = sliceoffset % TOAST_MAX_CHUNK_SIZE;
	endoffset = (sliceoffset + length - 1) % TOAST_MAX_CHUNK_SIZE;

	/*
	 * Open the toast relation and its indexes
	 */
	toastrel = FUNC27(toast_pointer.va_toastrelid, AccessShareLock);
	toasttupDesc = toastrel->rd_att;

	/* Look for the valid index of toast relation */
	validIndex = FUNC29(toastrel,
									AccessShareLock,
									&toastidxs,
									&num_indexes);

	/*
	 * Setup a scan key to fetch from the index. This is either two keys or
	 * three depending on the number of chunks.
	 */
	FUNC8(&toastkey[0],
				(AttrNumber) 1,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(toast_pointer.va_valueid));

	/*
	 * Use equality condition for one chunk, a range condition otherwise:
	 */
	if (numchunks == 1)
	{
		FUNC8(&toastkey[1],
					(AttrNumber) 2,
					BTEqualStrategyNumber, F_INT4EQ,
					FUNC3(startchunk));
		nscankeys = 2;
	}
	else
	{
		FUNC8(&toastkey[1],
					(AttrNumber) 2,
					BTGreaterEqualStrategyNumber, F_INT4GE,
					FUNC3(startchunk));
		FUNC8(&toastkey[2],
					(AttrNumber) 2,
					BTLessEqualStrategyNumber, F_INT4LE,
					FUNC3(endchunk));
		nscankeys = 3;
	}

	/*
	 * Read the chunks by index
	 *
	 * The index is on (valueid, chunkidx) so they will come in order
	 */
	FUNC20(&SnapshotToast);
	nextidx = startchunk;
	toastscan = FUNC23(toastrel, toastidxs[validIndex],
										   &SnapshotToast, nscankeys, toastkey);
	while ((ttup = FUNC25(toastscan, ForwardScanDirection)) != NULL)
	{
		/*
		 * Have a chunk, extract the sequence number and the data
		 */
		residx = FUNC1(FUNC19(ttup, 2, toasttupDesc, &isnull));
		FUNC0(!isnull);
		chunk = FUNC2(FUNC19(ttup, 3, toasttupDesc, &isnull));
		FUNC0(!isnull);
		if (!FUNC11(chunk))
		{
			chunksize = FUNC16(chunk) - VARHDRSZ;
			chunkdata = FUNC14(chunk);
		}
		else if (FUNC13(chunk))
		{
			/* could happen due to heap_form_tuple doing its thing */
			chunksize = FUNC17(chunk) - VARHDRSZ_SHORT;
			chunkdata = FUNC15(chunk);
		}
		else
		{
			/* should never happen */
			FUNC18(ERROR, "found toasted toast chunk for toast value %u in %s",
				 toast_pointer.va_valueid,
				 FUNC5(toastrel));
			chunksize = 0;		/* keep compiler quiet */
			chunkdata = NULL;
		}

		/*
		 * Some checks on the data we've found
		 */
		if ((residx != nextidx) || (residx > endchunk) || (residx < startchunk))
			FUNC18(ERROR, "unexpected chunk number %d (expected %d) for toast value %u in %s",
				 residx, nextidx,
				 toast_pointer.va_valueid,
				 FUNC5(toastrel));
		if (residx < totalchunks - 1)
		{
			if (chunksize != TOAST_MAX_CHUNK_SIZE)
				FUNC18(ERROR, "unexpected chunk size %d (expected %d) in chunk %d of %d for toast value %u in %s when fetching slice",
					 chunksize, (int) TOAST_MAX_CHUNK_SIZE,
					 residx, totalchunks,
					 toast_pointer.va_valueid,
					 FUNC5(toastrel));
		}
		else if (residx == totalchunks - 1)
		{
			if ((residx * TOAST_MAX_CHUNK_SIZE + chunksize) != attrsize)
				FUNC18(ERROR, "unexpected chunk size %d (expected %d) in final chunk %d for toast value %u in %s when fetching slice",
					 chunksize,
					 (int) (attrsize - residx * TOAST_MAX_CHUNK_SIZE),
					 residx,
					 toast_pointer.va_valueid,
					 FUNC5(toastrel));
		}
		else
			FUNC18(ERROR, "unexpected chunk number %d (out of range %d..%d) for toast value %u in %s",
				 residx,
				 0, totalchunks - 1,
				 toast_pointer.va_valueid,
				 FUNC5(toastrel));

		/*
		 * Copy the data into proper place in our result
		 */
		chcpystrt = 0;
		chcpyend = chunksize - 1;
		if (residx == startchunk)
			chcpystrt = startoffset;
		if (residx == endchunk)
			chcpyend = endoffset;

		FUNC21(FUNC14(result) +
			   (residx * TOAST_MAX_CHUNK_SIZE - sliceoffset) + chcpystrt,
			   chunkdata + chcpystrt,
			   (chcpyend - chcpystrt) + 1);

		nextidx++;
	}

	/*
	 * Final checks that we successfully fetched the datum
	 */
	if (nextidx != (endchunk + 1))
		FUNC18(ERROR, "missing chunk number %d for toast value %u in %s",
			 nextidx,
			 toast_pointer.va_valueid,
			 FUNC5(toastrel));

	/*
	 * End scan and close relations
	 */
	FUNC24(toastscan);
	FUNC28(toastidxs, num_indexes, AccessShareLock);
	FUNC26(toastrel, AccessShareLock);

	return result;
}