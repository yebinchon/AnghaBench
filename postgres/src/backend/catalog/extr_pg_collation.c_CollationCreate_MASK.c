#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nulls ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {char const* objectId; scalar_t__ objectSubId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  char const* Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_collation_collcollate ; 
 int Anum_pg_collation_collctype ; 
 int Anum_pg_collation_collencoding ; 
 int Anum_pg_collation_collisdeterministic ; 
 int Anum_pg_collation_collname ; 
 int Anum_pg_collation_collnamespace ; 
 int Anum_pg_collation_collowner ; 
 int Anum_pg_collation_collprovider ; 
 int Anum_pg_collation_collversion ; 
 int Anum_pg_collation_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  COLLNAMEENCNSP ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  CollationOidIndexId ; 
 int /*<<< orphan*/  CollationRelationId ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char const* InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int Natts_pg_collation ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareRowExclusiveLock ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC29(const char *collname, Oid collnamespace,
				Oid collowner,
				char collprovider,
				bool collisdeterministic,
				int32 collencoding,
				const char *collcollate, const char *collctype,
				const char *collversion,
				bool if_not_exists,
				bool quiet)
{
	Relation	rel;
	TupleDesc	tupDesc;
	HeapTuple	tup;
	Datum		values[Natts_pg_collation];
	bool		nulls[Natts_pg_collation];
	NameData	name_name,
				name_collate,
				name_ctype;
	Oid			oid;
	ObjectAddress myself,
				referenced;

	FUNC1(collname);
	FUNC1(collnamespace);
	FUNC1(collowner);
	FUNC1(collcollate);
	FUNC1(collctype);

	/*
	 * Make sure there is no existing collation of same name & encoding.
	 *
	 * This would be caught by the unique index anyway; we're just giving a
	 * friendlier error message.  The unique index provides a backstop against
	 * race conditions.
	 */
	if (FUNC15(COLLNAMEENCNSP,
							  FUNC13(collname),
							  FUNC8(collencoding),
							  FUNC11(collnamespace)))
	{
		if (quiet)
			return InvalidOid;
		else if (if_not_exists)
		{
			FUNC16(NOTICE,
					(FUNC17(ERRCODE_DUPLICATE_OBJECT),
					 collencoding == -1
					 ? FUNC18("collation \"%s\" already exists, skipping",
							  collname)
					 : FUNC18("collation \"%s\" for encoding \"%s\" already exists, skipping",
							  collname, FUNC23(collencoding))));
			return InvalidOid;
		}
		else
			FUNC16(ERROR,
					(FUNC17(ERRCODE_DUPLICATE_OBJECT),
					 collencoding == -1
					 ? FUNC18("collation \"%s\" already exists",
							  collname)
					 : FUNC18("collation \"%s\" for encoding \"%s\" already exists",
							  collname, FUNC23(collencoding))));
	}

	/* open pg_collation; see below about the lock level */
	rel = FUNC28(CollationRelationId, ShareRowExclusiveLock);

	/*
	 * Also forbid a specific-encoding collation shadowing an any-encoding
	 * collation, or an any-encoding collation being shadowed (see
	 * get_collation_name()).  This test is not backed up by the unique index,
	 * so we take a ShareRowExclusiveLock earlier, to protect against
	 * concurrent changes fooling this check.
	 */
	if ((collencoding == -1 &&
		 FUNC15(COLLNAMEENCNSP,
							   FUNC13(collname),
							   FUNC8(FUNC6()),
							   FUNC11(collnamespace))) ||
		(collencoding != -1 &&
		 FUNC15(COLLNAMEENCNSP,
							   FUNC13(collname),
							   FUNC8(-1),
							   FUNC11(collnamespace))))
	{
		if (quiet)
		{
			FUNC27(rel, NoLock);
			return InvalidOid;
		}
		else if (if_not_exists)
		{
			FUNC27(rel, NoLock);
			FUNC16(NOTICE,
					(FUNC17(ERRCODE_DUPLICATE_OBJECT),
					 FUNC18("collation \"%s\" already exists, skipping",
							collname)));
			return InvalidOid;
		}
		else
			FUNC16(ERROR,
					(FUNC17(ERRCODE_DUPLICATE_OBJECT),
					 FUNC18("collation \"%s\" already exists",
							collname)));
	}

	tupDesc = FUNC14(rel);

	/* form a tuple */
	FUNC21(nulls, 0, sizeof(nulls));

	FUNC22(&name_name, collname);
	oid = FUNC7(rel, CollationOidIndexId,
							 Anum_pg_collation_oid);
	values[Anum_pg_collation_oid - 1] = FUNC11(oid);
	values[Anum_pg_collation_collname - 1] = FUNC10(&name_name);
	values[Anum_pg_collation_collnamespace - 1] = FUNC11(collnamespace);
	values[Anum_pg_collation_collowner - 1] = FUNC11(collowner);
	values[Anum_pg_collation_collprovider - 1] = FUNC5(collprovider);
	values[Anum_pg_collation_collisdeterministic - 1] = FUNC2(collisdeterministic);
	values[Anum_pg_collation_collencoding - 1] = FUNC8(collencoding);
	FUNC22(&name_collate, collcollate);
	values[Anum_pg_collation_collcollate - 1] = FUNC10(&name_collate);
	FUNC22(&name_ctype, collctype);
	values[Anum_pg_collation_collctype - 1] = FUNC10(&name_ctype);
	if (collversion)
		values[Anum_pg_collation_collversion - 1] = FUNC3(collversion);
	else
		nulls[Anum_pg_collation_collversion - 1] = true;

	tup = FUNC19(tupDesc, values, nulls);

	/* insert a new tuple */
	FUNC4(rel, tup);
	FUNC0(FUNC12(oid));

	/* set up dependencies for the new collation */
	myself.classId = CollationRelationId;
	myself.objectId = oid;
	myself.objectSubId = 0;

	/* create dependency on namespace */
	referenced.classId = NamespaceRelationId;
	referenced.objectId = collnamespace;
	referenced.objectSubId = 0;
	FUNC24(&myself, &referenced, DEPENDENCY_NORMAL);

	/* create dependency on owner */
	FUNC26(CollationRelationId, oid, collowner);

	/* dependency on extension */
	FUNC25(&myself, false);

	/* Post creation hook for new collation */
	FUNC9(CollationRelationId, oid, 0);

	FUNC20(tup);
	FUNC27(rel, NoLock);

	return oid;
}