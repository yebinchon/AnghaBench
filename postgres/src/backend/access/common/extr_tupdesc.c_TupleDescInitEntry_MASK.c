#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_10__ {int attstattarget; int attcacheoff; int attnum; int attndims; int attnotnull; int atthasdef; int atthasmissing; char attidentity; char attgenerated; int attisdropped; int attislocal; int /*<<< orphan*/  attcollation; int /*<<< orphan*/  attstorage; int /*<<< orphan*/  attalign; int /*<<< orphan*/  attbyval; int /*<<< orphan*/  attlen; int /*<<< orphan*/  atttypid; scalar_t__ attinhcount; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  attname; scalar_t__ attrelid; } ;
struct TYPE_9__ {int /*<<< orphan*/  typcollation; int /*<<< orphan*/  typstorage; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; } ;
struct TYPE_8__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_type ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char const* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 TYPE_3__* FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 

void
FUNC12(TupleDesc desc,
				   AttrNumber attributeNumber,
				   const char *attributeName,
				   Oid oidtypeid,
				   int32 typmod,
				   int attdim)
{
	HeapTuple	tuple;
	Form_pg_type typeForm;
	Form_pg_attribute att;

	/*
	 * sanity checks
	 */
	FUNC0(FUNC6(desc));
	FUNC0(attributeNumber >= 1);
	FUNC0(attributeNumber <= desc->natts);

	/*
	 * initialize the attribute fields
	 */
	att = FUNC9(desc, attributeNumber - 1);

	att->attrelid = 0;			/* dummy value */

	/*
	 * Note: attributeName can be NULL, because the planner doesn't always
	 * fill in valid resname values in targetlists, particularly for resjunk
	 * attributes. Also, do nothing if caller wants to re-use the old attname.
	 */
	if (attributeName == NULL)
		FUNC3(FUNC4(att->attname), 0, NAMEDATALEN);
	else if (attributeName != FUNC4(att->attname))
		FUNC11(&(att->attname), attributeName);

	att->attstattarget = -1;
	att->attcacheoff = -1;
	att->atttypmod = typmod;

	att->attnum = attributeNumber;
	att->attndims = attdim;

	att->attnotnull = false;
	att->atthasdef = false;
	att->atthasmissing = false;
	att->attidentity = '\0';
	att->attgenerated = '\0';
	att->attisdropped = false;
	att->attislocal = true;
	att->attinhcount = 0;
	/* attacl, attoptions and attfdwoptions are not present in tupledescs */

	tuple = FUNC8(TYPEOID, FUNC5(oidtypeid));
	if (!FUNC2(tuple))
		FUNC10(ERROR, "cache lookup failed for type %u", oidtypeid);
	typeForm = (Form_pg_type) FUNC1(tuple);

	att->atttypid = oidtypeid;
	att->attlen = typeForm->typlen;
	att->attbyval = typeForm->typbyval;
	att->attalign = typeForm->typalign;
	att->attstorage = typeForm->typstorage;
	att->attcollation = typeForm->typcollation;

	FUNC7(tuple);
}