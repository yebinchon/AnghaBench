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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ Publication ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_publication_rel_oid ; 
 int Anum_pg_publication_rel_prpubid ; 
 int Anum_pg_publication_rel_prrelid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_AUTO ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 int Natts_pg_publication_rel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUBLICATIONRELMAP ; 
 int /*<<< orphan*/  PublicationRelObjectIndexId ; 
 int /*<<< orphan*/  PublicationRelRelationId ; 
 int /*<<< orphan*/  PublicationRelationId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC20(Oid pubid, Relation targetrel,
						 bool if_not_exists)
{
	Relation	rel;
	HeapTuple	tup;
	Datum		values[Natts_pg_publication_rel];
	bool		nulls[Natts_pg_publication_rel];
	Oid			relid = FUNC8(targetrel);
	Oid			prrelid;
	Publication *pub = FUNC3(pubid);
	ObjectAddress myself,
				referenced;

	rel = FUNC19(PublicationRelRelationId, RowExclusiveLock);

	/*
	 * Check for duplicates. Note that this does not really prevent
	 * duplicates, it's here just to provide nicer error message in common
	 * case. The real protection is the unique key on the catalog.
	 */
	if (FUNC9(PUBLICATIONRELMAP, FUNC5(relid),
							  FUNC5(pubid)))
	{
		FUNC18(rel, RowExclusiveLock);

		if (if_not_exists)
			return InvalidObjectAddress;

		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_OBJECT),
				 FUNC13("relation \"%s\" is already member of publication \"%s\"",
						FUNC7(targetrel), pub->name)));
	}

	FUNC10(targetrel);

	/* Form a tuple. */
	FUNC16(values, 0, sizeof(values));
	FUNC16(nulls, false, sizeof(nulls));

	prrelid = FUNC2(rel, PublicationRelObjectIndexId,
								 Anum_pg_publication_rel_oid);
	values[Anum_pg_publication_rel_oid - 1] = FUNC5(prrelid);
	values[Anum_pg_publication_rel_prpubid - 1] =
		FUNC5(pubid);
	values[Anum_pg_publication_rel_prrelid - 1] =
		FUNC5(relid);

	tup = FUNC14(FUNC6(rel), values, nulls);

	/* Insert tuple into catalog. */
	FUNC1(rel, tup);
	FUNC15(tup);

	FUNC4(myself, PublicationRelRelationId, prrelid);

	/* Add dependency on the publication */
	FUNC4(referenced, PublicationRelationId, pubid);
	FUNC17(&myself, &referenced, DEPENDENCY_AUTO);

	/* Add dependency on the relation */
	FUNC4(referenced, RelationRelationId, relid);
	FUNC17(&myself, &referenced, DEPENDENCY_AUTO);

	/* Close the table. */
	FUNC18(rel, RowExclusiveLock);

	/* Invalidate relcache so that publication info is rebuilt. */
	FUNC0(targetrel);

	return myself;
}