#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* fstartptr; char* fendptr; int /*<<< orphan*/  hdr; int /*<<< orphan*/  flags; TYPE_2__* fvalue; int /*<<< orphan*/  er_typmod; int /*<<< orphan*/  er_typeid; int /*<<< orphan*/  er_decltypeid; int /*<<< orphan*/  er_magic; } ;
struct TYPE_7__ {int t_len; scalar_t__ t_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_len; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_1__ HeapTupleData ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__ ExpandedRecordHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ER_FLAG_FVALUE_ALLOCED ; 
 int /*<<< orphan*/  ER_FLAG_FVALUE_VALID ; 
 int /*<<< orphan*/  ER_MAGIC ; 
 int /*<<< orphan*/  ER_methods ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (TYPE_1__*) ; 

Datum
FUNC13(Datum recorddatum, MemoryContext parentcontext)
{
	ExpandedRecordHeader *erh;
	HeapTupleHeader tuphdr;
	HeapTupleData tmptup;
	HeapTuple	newtuple;
	MemoryContext objcxt;
	MemoryContext oldcxt;

	/*
	 * Allocate private context for expanded object.  We use a regular-size
	 * context, not a small one, to improve the odds that we can fit a tupdesc
	 * into it without needing an extra malloc block.
	 */
	objcxt = FUNC0(parentcontext,
								   "expanded record",
								   ALLOCSET_DEFAULT_SIZES);

	/* Set up expanded record header, initializing fields to 0/null */
	erh = (ExpandedRecordHeader *)
		FUNC10(objcxt, sizeof(ExpandedRecordHeader));

	FUNC4(&erh->hdr, &ER_methods, objcxt);
	erh->er_magic = ER_MAGIC;

	/*
	 * Detoast and copy source record into private context, as a HeapTuple.
	 * (If we actually have to detoast the source, we'll leak some memory in
	 * the caller's context, but it doesn't seem worth worrying about.)
	 */
	tuphdr = FUNC2(recorddatum);

	tmptup.t_len = FUNC5(tuphdr);
	FUNC9(&(tmptup.t_self));
	tmptup.t_tableOid = InvalidOid;
	tmptup.t_data = tuphdr;

	oldcxt = FUNC11(objcxt);
	newtuple = FUNC12(&tmptup);
	erh->flags |= ER_FLAG_FVALUE_ALLOCED;
	FUNC11(oldcxt);

	/* Fill in composite-type identification info */
	erh->er_decltypeid = erh->er_typeid = FUNC7(tuphdr);
	erh->er_typmod = FUNC6(tuphdr);

	/* remember we have a flat representation */
	erh->fvalue = newtuple;
	erh->fstartptr = (char *) newtuple->t_data;
	erh->fendptr = ((char *) newtuple->t_data) + newtuple->t_len;
	erh->flags |= ER_FLAG_FVALUE_VALID;

	/* Shouldn't need to set ER_FLAG_HAVE_EXTERNAL */
	FUNC1(!FUNC8(tuphdr));

	/*
	 * We won't look up the tupdesc till we have to, nor make a deconstructed
	 * representation.  We don't have enough info to fill flat_size and
	 * friends, either.
	 */

	/* return a R/W pointer to the expanded record */
	return FUNC3(&erh->hdr);
}