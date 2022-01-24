#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  domain_info; int /*<<< orphan*/  base_typid; int /*<<< orphan*/  record_io; int /*<<< orphan*/  tupdesc; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  JsValue ;
typedef  int /*<<< orphan*/  JsObject ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  scalar_t__ Datum ;
typedef  TYPE_1__ CompositeIOData ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RECORDOID ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC6(CompositeIOData *io,
				   Oid typid,
				   const char *colname,
				   MemoryContext mcxt,
				   HeapTupleHeader defaultval,
				   JsValue *jsv,
				   bool isnull)
{
	Datum		result;

	/* acquire/update cached tuple descriptor */
	FUNC5(io, mcxt);

	if (isnull)
		result = (Datum) 0;
	else
	{
		HeapTupleHeader tuple;
		JsObject	jso;

		/* prepare input value */
		FUNC2(jsv, &jso);

		/* populate resulting record tuple */
		tuple = FUNC4(io->tupdesc, &io->record_io,
								defaultval, mcxt, &jso);
		result = FUNC0(tuple);

		FUNC1(&jso);
	}

	/*
	 * If it's domain over composite, check domain constraints.  (This should
	 * probably get refactored so that we can see the TYPECAT value, but for
	 * now, we can tell by comparing typid to base_typid.)
	 */
	if (typid != io->base_typid && typid != RECORDOID)
		FUNC3(result, isnull, typid, &io->domain_info, mcxt);

	return result;
}