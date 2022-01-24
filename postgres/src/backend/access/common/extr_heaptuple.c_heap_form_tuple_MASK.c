#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_14__ {int t_len; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; TYPE_2__* t_data; } ;
struct TYPE_13__ {int t_hoff; int /*<<< orphan*/ * t_bits; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_ctid; } ;
struct TYPE_12__ {int natts; int /*<<< orphan*/  tdtypmod; int /*<<< orphan*/  tdtypeid; } ;
typedef  int Size ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  TYPE_3__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_TOO_MANY_COLUMNS ; 
 int /*<<< orphan*/  ERROR ; 
 int HEAPTUPLESIZE ; 
 int /*<<< orphan*/  HeapTupleHeaderData ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int MaxTupleAttributeNumber ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  t_bits ; 

HeapTuple
FUNC14(TupleDesc tupleDescriptor,
				Datum *values,
				bool *isnull)
{
	HeapTuple	tuple;			/* return tuple */
	HeapTupleHeader td;			/* tuple data */
	Size		len,
				data_len;
	int			hoff;
	bool		hasnull = false;
	int			numberOfAttributes = tupleDescriptor->natts;
	int			i;

	if (numberOfAttributes > MaxTupleAttributeNumber)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_TOO_MANY_COLUMNS),
				 FUNC9("number of columns (%d) exceeds limit (%d)",
						numberOfAttributes, MaxTupleAttributeNumber)));

	/*
	 * Check for nulls
	 */
	for (i = 0; i < numberOfAttributes; i++)
	{
		if (isnull[i])
		{
			hasnull = true;
			break;
		}
	}

	/*
	 * Determine total space needed
	 */
	len = FUNC12(HeapTupleHeaderData, t_bits);

	if (hasnull)
		len += FUNC0(numberOfAttributes);

	hoff = len = FUNC6(len); /* align user data safely */

	data_len = FUNC10(tupleDescriptor, values, isnull);

	len += data_len;

	/*
	 * Allocate and zero the space needed.  Note that the tuple body and
	 * HeapTupleData management structure are allocated in one chunk.
	 */
	tuple = (HeapTuple) FUNC13(HEAPTUPLESIZE + len);
	tuple->t_data = td = (HeapTupleHeader) ((char *) tuple + HEAPTUPLESIZE);

	/*
	 * And fill in the information.  Note we fill the Datum fields even though
	 * this tuple may never become a Datum.  This lets HeapTupleHeaderGetDatum
	 * identify the tuple type if needed.
	 */
	tuple->t_len = len;
	FUNC5(&(tuple->t_self));
	tuple->t_tableOid = InvalidOid;

	FUNC1(td, len);
	FUNC4(td, tupleDescriptor->tdtypeid);
	FUNC3(td, tupleDescriptor->tdtypmod);
	/* We also make sure that t_ctid is invalid unless explicitly set */
	FUNC5(&(td->t_ctid));

	FUNC2(td, numberOfAttributes);
	td->t_hoff = hoff;

	FUNC11(tupleDescriptor,
					values,
					isnull,
					(char *) td + hoff,
					data_len,
					&td->t_infomask,
					(hasnull ? td->t_bits : NULL));

	return tuple;
}