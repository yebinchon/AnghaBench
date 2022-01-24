#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  char bits8 ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_26__ {int /*<<< orphan*/  am_value; scalar_t__ am_present; } ;
struct TYPE_25__ {int /*<<< orphan*/  attlen; int /*<<< orphan*/  attalign; } ;
struct TYPE_24__ {int t_len; TYPE_3__* t_data; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_tableOid; } ;
struct TYPE_23__ {int t_hoff; int t_len; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_ctid; } ;
struct TYPE_22__ {int natts; int /*<<< orphan*/  tdtypmod; int /*<<< orphan*/  tdtypeid; TYPE_1__* constr; } ;
struct TYPE_21__ {TYPE_7__* missing; } ;
typedef  int Size ;
typedef  TYPE_3__* MinimalTuple ;
typedef  TYPE_3__* HeapTupleHeader ;
typedef  TYPE_5__* HeapTuple ;
typedef  TYPE_6__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_7__ AttrMissing ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int HEAPTUPLESIZE ; 
 int FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  HeapTupleHeaderData ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 int MINIMAL_TUPLE_OFFSET ; 
 int /*<<< orphan*/  MinimalTupleData ; 
 int SizeofMinimalTupleHeader ; 
 TYPE_6__* FUNC10 (TYPE_2__*,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,char**,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  t_bits ; 

__attribute__((used)) static void
FUNC18(HeapTuple *targetHeapTuple,
			 MinimalTuple *targetMinimalTuple,
			 HeapTuple sourceTuple,
			 TupleDesc tupleDesc)
{
	AttrMissing *attrmiss = NULL;
	int			attnum;
	int			firstmissingnum = 0;
	bool		hasNulls = FUNC2(sourceTuple);
	HeapTupleHeader targetTHeader;
	HeapTupleHeader sourceTHeader = sourceTuple->t_data;
	int			sourceNatts = FUNC3(sourceTHeader);
	int			natts = tupleDesc->natts;
	int			sourceNullLen;
	int			targetNullLen;
	Size		sourceDataLen = sourceTuple->t_len - sourceTHeader->t_hoff;
	Size		targetDataLen;
	Size		len;
	int			hoff;
	bits8	   *nullBits = NULL;
	int			bitMask = 0;
	char	   *targetData;
	uint16	   *infoMask;

	FUNC0((targetHeapTuple && !targetMinimalTuple)
		   || (!targetHeapTuple && targetMinimalTuple));

	FUNC0(sourceNatts < natts);

	sourceNullLen = (hasNulls ? FUNC1(sourceNatts) : 0);

	targetDataLen = sourceDataLen;

	if (tupleDesc->constr &&
		tupleDesc->constr->missing)
	{
		/*
		 * If there are missing values we want to put them into the tuple.
		 * Before that we have to compute the extra length for the values
		 * array and the variable length data.
		 */
		attrmiss = tupleDesc->constr->missing;

		/*
		 * Find the first item in attrmiss for which we don't have a value in
		 * the source. We can ignore all the missing entries before that.
		 */
		for (firstmissingnum = sourceNatts;
			 firstmissingnum < natts;
			 firstmissingnum++)
		{
			if (attrmiss[firstmissingnum].am_present)
				break;
			else
				hasNulls = true;
		}

		/*
		 * Now walk the missing attributes. If there is a missing value make
		 * space for it. Otherwise, it's going to be NULL.
		 */
		for (attnum = firstmissingnum;
			 attnum < natts;
			 attnum++)
		{
			if (attrmiss[attnum].am_present)
			{
				Form_pg_attribute att = FUNC10(tupleDesc, attnum);

				targetDataLen = FUNC12(targetDataLen,
												att->attalign,
												att->attlen,
												attrmiss[attnum].am_value);

				targetDataLen = FUNC11(targetDataLen,
													  att->attlen,
													  attrmiss[attnum].am_value);
			}
			else
			{
				/* no missing value, so it must be null */
				hasNulls = true;
			}
		}
	}							/* end if have missing values */
	else
	{
		/*
		 * If there are no missing values at all then NULLS must be allowed,
		 * since some of the attributes are known to be absent.
		 */
		hasNulls = true;
	}

	len = 0;

	if (hasNulls)
	{
		targetNullLen = FUNC1(natts);
		len += targetNullLen;
	}
	else
		targetNullLen = 0;

	/*
	 * Allocate and zero the space needed.  Note that the tuple body and
	 * HeapTupleData management structure are allocated in one chunk.
	 */
	if (targetHeapTuple)
	{
		len += FUNC16(HeapTupleHeaderData, t_bits);
		hoff = len = FUNC9(len); /* align user data safely */
		len += targetDataLen;

		*targetHeapTuple = (HeapTuple) FUNC17(HEAPTUPLESIZE + len);
		(*targetHeapTuple)->t_data
			= targetTHeader
			= (HeapTupleHeader) ((char *) *targetHeapTuple + HEAPTUPLESIZE);
		(*targetHeapTuple)->t_len = len;
		(*targetHeapTuple)->t_tableOid = sourceTuple->t_tableOid;
		(*targetHeapTuple)->t_self = sourceTuple->t_self;

		targetTHeader->t_infomask = sourceTHeader->t_infomask;
		targetTHeader->t_hoff = hoff;
		FUNC5(targetTHeader, natts);
		FUNC4(targetTHeader, len);
		FUNC7(targetTHeader, tupleDesc->tdtypeid);
		FUNC6(targetTHeader, tupleDesc->tdtypmod);
		/* We also make sure that t_ctid is invalid unless explicitly set */
		FUNC8(&(targetTHeader->t_ctid));
		if (targetNullLen > 0)
			nullBits = (bits8 *) ((char *) (*targetHeapTuple)->t_data
								  + FUNC16(HeapTupleHeaderData, t_bits));
		targetData = (char *) (*targetHeapTuple)->t_data + hoff;
		infoMask = &(targetTHeader->t_infomask);
	}
	else
	{
		len += SizeofMinimalTupleHeader;
		hoff = len = FUNC9(len); /* align user data safely */
		len += targetDataLen;

		*targetMinimalTuple = (MinimalTuple) FUNC17(len);
		(*targetMinimalTuple)->t_len = len;
		(*targetMinimalTuple)->t_hoff = hoff + MINIMAL_TUPLE_OFFSET;
		(*targetMinimalTuple)->t_infomask = sourceTHeader->t_infomask;
		/* Same macro works for MinimalTuples */
		FUNC5(*targetMinimalTuple, natts);
		if (targetNullLen > 0)
			nullBits = (bits8 *) ((char *) *targetMinimalTuple
								  + FUNC16(MinimalTupleData, t_bits));
		targetData = (char *) *targetMinimalTuple + hoff;
		infoMask = &((*targetMinimalTuple)->t_infomask);
	}

	if (targetNullLen > 0)
	{
		if (sourceNullLen > 0)
		{
			/* if bitmap pre-existed copy in - all is set */
			FUNC14(nullBits,
				   ((char *) sourceTHeader)
				   + FUNC16(HeapTupleHeaderData, t_bits),
				   sourceNullLen);
			nullBits += sourceNullLen - 1;
		}
		else
		{
			sourceNullLen = FUNC1(sourceNatts);
			/* Set NOT NULL for all existing attributes */
			FUNC15(nullBits, 0xff, sourceNullLen);

			nullBits += sourceNullLen - 1;

			if (sourceNatts & 0x07)
			{
				/* build the mask (inverted!) */
				bitMask = 0xff << (sourceNatts & 0x07);
				/* Voila */
				*nullBits = ~bitMask;
			}
		}

		bitMask = (1 << ((sourceNatts - 1) & 0x07));
	}							/* End if have null bitmap */

	FUNC14(targetData,
		   ((char *) sourceTuple->t_data) + sourceTHeader->t_hoff,
		   sourceDataLen);

	targetData += sourceDataLen;

	/* Now fill in the missing values */
	for (attnum = sourceNatts; attnum < natts; attnum++)
	{

		Form_pg_attribute attr = FUNC10(tupleDesc, attnum);

		if (attrmiss && attrmiss[attnum].am_present)
		{
			FUNC13(attr,
					 nullBits ? &nullBits : NULL,
					 &bitMask,
					 &targetData,
					 infoMask,
					 attrmiss[attnum].am_value,
					 false);
		}
		else
		{
			FUNC13(attr,
					 &nullBits,
					 &bitMask,
					 &targetData,
					 infoMask,
					 (Datum) 0,
					 true);
		}
	}							/* end loop over missing attributes */
}