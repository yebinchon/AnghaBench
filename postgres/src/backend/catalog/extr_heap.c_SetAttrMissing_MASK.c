#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valuesAtt ;
typedef  int /*<<< orphan*/  replacesAtt ;
typedef  int /*<<< orphan*/  nullsAtt ;
struct TYPE_11__ {int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; } ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int Anum_pg_attribute_atthasmissing ; 
 int Anum_pg_attribute_attmissingval ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_ARRAY_IN ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 
 int Natts_pg_attribute ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(Oid relid, char *attname, char *value)
{
	Datum		valuesAtt[Natts_pg_attribute];
	bool		nullsAtt[Natts_pg_attribute];
	bool		replacesAtt[Natts_pg_attribute];
	Datum		missingval;
	Form_pg_attribute attStruct;
	Relation	attrrel,
				tablerel;
	HeapTuple	atttup,
				newtup;

	/* lock the table the attribute belongs to */
	tablerel = FUNC15(relid, AccessExclusiveLock);

	/* Lock the attribute row and get the data */
	attrrel = FUNC15(AttributeRelationId, RowExclusiveLock);
	atttup = FUNC11(relid, attname);
	if (!FUNC4(atttup))
		FUNC12(ERROR, "cache lookup failed for attribute %s of relation %u",
			 attname, relid);
	attStruct = (Form_pg_attribute) FUNC3(atttup);

	/* get an array value from the value string */
	missingval = FUNC8(F_ARRAY_IN,
								  FUNC1(value),
								  FUNC7(attStruct->atttypid),
								  FUNC5(attStruct->atttypmod));

	/* update the tuple - set atthasmissing and attmissingval */
	FUNC6(valuesAtt, 0, sizeof(valuesAtt));
	FUNC6(nullsAtt, false, sizeof(nullsAtt));
	FUNC6(replacesAtt, false, sizeof(replacesAtt));

	valuesAtt[Anum_pg_attribute_atthasmissing - 1] = FUNC0(true);
	replacesAtt[Anum_pg_attribute_atthasmissing - 1] = true;
	valuesAtt[Anum_pg_attribute_attmissingval - 1] = missingval;
	replacesAtt[Anum_pg_attribute_attmissingval - 1] = true;

	newtup = FUNC13(atttup, FUNC9(attrrel),
							   valuesAtt, nullsAtt, replacesAtt);
	FUNC2(attrrel, &newtup->t_self, newtup);

	/* clean up */
	FUNC10(atttup);
	FUNC14(attrrel, RowExclusiveLock);
	FUNC14(tablerel, AccessExclusiveLock);
}