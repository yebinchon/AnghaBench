#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valuesAtt ;
typedef  int /*<<< orphan*/  replacesAtt ;
typedef  int /*<<< orphan*/  nullsAtt ;
typedef  int /*<<< orphan*/  newattname ;
struct TYPE_10__ {int attisdropped; int attnotnull; char attgenerated; scalar_t__ atthasmissing; int /*<<< orphan*/  attname; scalar_t__ attstattarget; int /*<<< orphan*/  atttypid; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int Datum ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int Anum_pg_attribute_atthasmissing ; 
 int Anum_pg_attribute_attmissingval ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 
 int NAMEDATALEN ; 
 int Natts_pg_attribute ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC19(Oid relid, AttrNumber attnum)
{
	Relation	rel;
	Relation	attr_rel;
	HeapTuple	tuple;
	Form_pg_attribute attStruct;
	char		newattname[NAMEDATALEN];

	/*
	 * Grab an exclusive lock on the target table, which we will NOT release
	 * until end of transaction.  (In the simple case where we are directly
	 * dropping this column, ATExecDropColumn already did this ... but when
	 * cascading from a drop of some other object, we may not have any lock.)
	 */
	rel = FUNC15(relid, AccessExclusiveLock);

	attr_rel = FUNC18(AttributeRelationId, RowExclusiveLock);

	tuple = FUNC10(ATTNUM,
								FUNC7(relid),
								FUNC5(attnum));
	if (!FUNC4(tuple))	/* shouldn't happen */
		FUNC11(ERROR, "cache lookup failed for attribute %d of relation %u",
			 attnum, relid);
	attStruct = (Form_pg_attribute) FUNC3(tuple);

	if (attnum < 0)
	{
		/* System attribute (probably OID) ... just delete the row */

		FUNC1(attr_rel, &tuple->t_self);
	}
	else
	{
		/* Dropping user attributes is lots harder */

		/* Mark the attribute as dropped */
		attStruct->attisdropped = true;

		/*
		 * Set the type OID to invalid.  A dropped attribute's type link
		 * cannot be relied on (once the attribute is dropped, the type might
		 * be too). Fortunately we do not need the type row --- the only
		 * really essential information is the type's typlen and typalign,
		 * which are preserved in the attribute's attlen and attalign.  We set
		 * atttypid to zero here as a means of catching code that incorrectly
		 * expects it to be valid.
		 */
		attStruct->atttypid = InvalidOid;

		/* Remove any NOT NULL constraint the column may have */
		attStruct->attnotnull = false;

		/* We don't want to keep stats for it anymore */
		attStruct->attstattarget = 0;

		/* Unset this so no one tries to look up the generation expression */
		attStruct->attgenerated = '\0';

		/*
		 * Change the column name to something that isn't likely to conflict
		 */
		FUNC16(newattname, sizeof(newattname),
				 "........pg.dropped.%d........", attnum);
		FUNC13(&(attStruct->attname), newattname);

		/* clear the missing value if any */
		if (attStruct->atthasmissing)
		{
			Datum		valuesAtt[Natts_pg_attribute];
			bool		nullsAtt[Natts_pg_attribute];
			bool		replacesAtt[Natts_pg_attribute];

			/* update the tuple - set atthasmissing and attmissingval */
			FUNC6(valuesAtt, 0, sizeof(valuesAtt));
			FUNC6(nullsAtt, false, sizeof(nullsAtt));
			FUNC6(replacesAtt, false, sizeof(replacesAtt));

			valuesAtt[Anum_pg_attribute_atthasmissing - 1] =
				FUNC0(false);
			replacesAtt[Anum_pg_attribute_atthasmissing - 1] = true;
			valuesAtt[Anum_pg_attribute_attmissingval - 1] = (Datum) 0;
			nullsAtt[Anum_pg_attribute_attmissingval - 1] = true;
			replacesAtt[Anum_pg_attribute_attmissingval - 1] = true;

			tuple = FUNC12(tuple, FUNC8(attr_rel),
									  valuesAtt, nullsAtt, replacesAtt);
		}

		FUNC2(attr_rel, &tuple->t_self, tuple);
	}

	/*
	 * Because updating the pg_attribute row will trigger a relcache flush for
	 * the target relation, we need not do anything else to notify other
	 * backends of the change.
	 */

	FUNC17(attr_rel, RowExclusiveLock);

	if (attnum > 0)
		FUNC9(relid, attnum);

	FUNC14(rel, NoLock);
}