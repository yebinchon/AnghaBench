#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_3__ {int /*<<< orphan*/ * t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_len; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTupleHeader ;
typedef  TYPE_1__ HeapTupleData ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Datum
FUNC9(HeapTupleHeader tuple,
				  AttrNumber attrno,
				  bool *isNull)
{
	Datum		result;
	Oid			tupType;
	int32		tupTypmod;
	TupleDesc	tupDesc;
	HeapTupleData tmptup;

	if (!FUNC0(attrno))
		FUNC6(ERROR, "invalid attribute number %d", attrno);

	if (isNull == NULL)
		FUNC6(ERROR, "a NULL isNull pointer was passed");

	if (tuple == NULL)
	{
		/* Kinda bogus but compatible with old behavior... */
		*isNull = true;
		return (Datum) 0;
	}

	tupType = FUNC3(tuple);
	tupTypmod = FUNC2(tuple);
	tupDesc = FUNC8(tupType, tupTypmod);

	/*
	 * heap_getattr needs a HeapTuple not a bare HeapTupleHeader.  We set all
	 * the fields in the struct just in case user tries to inspect system
	 * columns.
	 */
	tmptup.t_len = FUNC1(tuple);
	FUNC4(&(tmptup.t_self));
	tmptup.t_tableOid = InvalidOid;
	tmptup.t_data = tuple;

	result = FUNC7(&tmptup,
						  attrno,
						  tupDesc,
						  isNull);

	FUNC5(tupDesc);

	return result;
}