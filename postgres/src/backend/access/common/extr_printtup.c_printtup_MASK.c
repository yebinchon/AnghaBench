#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_9__ {scalar_t__* tts_isnull; int /*<<< orphan*/ * tts_values; TYPE_2__* tts_tupleDescriptor; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_12__ {int nattrs; int /*<<< orphan*/  tmpcontext; TYPE_3__* myinfo; TYPE_2__* attrinfo; int /*<<< orphan*/  buf; } ;
struct TYPE_11__ {scalar_t__ format; int /*<<< orphan*/  finfo; scalar_t__ typisvarlena; } ;
struct TYPE_10__ {int natts; } ;
typedef  int /*<<< orphan*/ * StringInfo ;
typedef  TYPE_3__ PrinttupAttrInfo ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ DR_printtup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static bool
FUNC18(TupleTableSlot *slot, DestReceiver *self)
{
	TupleDesc	typeinfo = slot->tts_tupleDescriptor;
	DR_printtup *myState = (DR_printtup *) self;
	MemoryContext oldcontext;
	StringInfo	buf = &myState->buf;
	int			natts = typeinfo->natts;
	int			i;

	/* Set or update my derived attribute info, if needed */
	if (myState->attrinfo != typeinfo || myState->nattrs != natts)
		FUNC15(myState, typeinfo, natts);

	/* Make sure the tuple is fully deconstructed */
	FUNC16(slot);

	/* Switch into per-row context so we can recover memory below */
	oldcontext = FUNC2(myState->tmpcontext);

	/*
	 * Prepare a DataRow message (note buffer is in per-row context)
	 */
	FUNC9(buf, 'D');

	FUNC13(buf, natts);

	/*
	 * send the attributes of this tuple
	 */
	for (i = 0; i < natts; ++i)
	{
		PrinttupAttrInfo *thisState = myState->myinfo + i;
		Datum		attr = slot->tts_values[i];

		if (slot->tts_isnull[i])
		{
			FUNC14(buf, -1);
			continue;
		}

		/*
		 * Here we catch undefined bytes in datums that are returned to the
		 * client without hitting disk; see comments at the related check in
		 * PageAddItem().  This test is most useful for uncompressed,
		 * non-external datums, but we're quite likely to see such here when
		 * testing new C functions.
		 */
		if (thisState->typisvarlena)
			FUNC5(FUNC0(attr),
										  FUNC8(attr));

		if (thisState->format == 0)
		{
			/* Text output */
			char	   *outputstr;

			outputstr = FUNC3(&thisState->finfo, attr);
			FUNC12(buf, outputstr, FUNC17(outputstr), false);
		}
		else
		{
			/* Binary output */
			bytea	   *outputbytes;

			outputbytes = FUNC4(&thisState->finfo, attr);
			FUNC14(buf, FUNC7(outputbytes) - VARHDRSZ);
			FUNC11(buf, FUNC6(outputbytes),
						 FUNC7(outputbytes) - VARHDRSZ);
		}
	}

	FUNC10(buf);

	/* Return to caller's context, and flush row's temporary memory */
	FUNC2(oldcontext);
	FUNC1(myState->tmpcontext);

	return true;
}