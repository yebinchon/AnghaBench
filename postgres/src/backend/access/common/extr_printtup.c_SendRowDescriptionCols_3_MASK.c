#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  scalar_t__ int16 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ resorigcol; scalar_t__ resorigtbl; scalar_t__ resjunk; } ;
typedef  TYPE_2__ TargetEntry ;
struct TYPE_9__ {scalar_t__ attlen; int /*<<< orphan*/  attname; scalar_t__ atttypmod; scalar_t__ atttypid; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int MAX_CONVERSION_GROWTH ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(StringInfo buf, TupleDesc typeinfo, List *targetlist, int16 *formats)
{
	int			natts = typeinfo->natts;
	int			i;
	ListCell   *tlist_item = FUNC5(targetlist);

	/*
	 * Preallocate memory for the entire message to be sent. That allows to
	 * use the significantly faster inline pqformat.h functions and to avoid
	 * reallocations.
	 *
	 * Have to overestimate the size of the column-names, to account for
	 * character set overhead.
	 */
	FUNC2(buf, (NAMEDATALEN * MAX_CONVERSION_GROWTH /* attname */
							+ sizeof(Oid)	/* resorigtbl */
							+ sizeof(AttrNumber)	/* resorigcol */
							+ sizeof(Oid)	/* atttypid */
							+ sizeof(int16) /* attlen */
							+ sizeof(int32) /* attypmod */
							+ sizeof(int16) /* format */
							) * natts);

	for (i = 0; i < natts; ++i)
	{
		Form_pg_attribute att = FUNC1(typeinfo, i);
		Oid			atttypid = att->atttypid;
		int32		atttypmod = att->atttypmod;
		Oid			resorigtbl;
		AttrNumber	resorigcol;
		int16		format;

		/*
		 * If column is a domain, send the base type and typmod instead.
		 * Lookup before sending any ints, for efficiency.
		 */
		atttypid = FUNC3(atttypid, &atttypmod);

		/* Do we have a non-resjunk tlist item? */
		while (tlist_item &&
			   ((TargetEntry *) FUNC4(tlist_item))->resjunk)
			tlist_item = FUNC6(targetlist, tlist_item);
		if (tlist_item)
		{
			TargetEntry *tle = (TargetEntry *) FUNC4(tlist_item);

			resorigtbl = tle->resorigtbl;
			resorigcol = tle->resorigcol;
			tlist_item = FUNC6(targetlist, tlist_item);
		}
		else
		{
			/* No info available, so send zeroes */
			resorigtbl = 0;
			resorigcol = 0;
		}

		if (formats)
			format = formats[i];
		else
			format = 0;

		FUNC9(buf, FUNC0(att->attname));
		FUNC8(buf, resorigtbl);
		FUNC7(buf, resorigcol);
		FUNC8(buf, atttypid);
		FUNC7(buf, att->attlen);
		FUNC8(buf, atttypmod);
		FUNC7(buf, format);
	}
}