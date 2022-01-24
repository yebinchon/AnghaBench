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
struct TYPE_3__ {int for_all_tables; scalar_t__ tables; int /*<<< orphan*/  options; int /*<<< orphan*/  pubname; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;
typedef  TYPE_1__ CreatePublicationStmt ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int Anum_pg_publication_oid ; 
 int Anum_pg_publication_puballtables ; 
 int Anum_pg_publication_pubdelete ; 
 int Anum_pg_publication_pubinsert ; 
 int Anum_pg_publication_pubname ; 
 int Anum_pg_publication_pubowner ; 
 int Anum_pg_publication_pubtruncate ; 
 int Anum_pg_publication_pubupdate ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int Natts_pg_publication ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  PUBLICATIONNAME ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PublicationObjectIndexId ; 
 int /*<<< orphan*/  PublicationRelationId ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 scalar_t__ WAL_LEVEL_LOGICAL ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int*,int,int) ; 
 int /*<<< orphan*/  namein ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int*,int*,int*,int*,int*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ wal_level ; 

ObjectAddress
FUNC33(CreatePublicationStmt *stmt)
{
	Relation	rel;
	ObjectAddress myself;
	Oid			puboid;
	bool		nulls[Natts_pg_publication];
	Datum		values[Natts_pg_publication];
	HeapTuple	tup;
	bool		publish_given;
	bool		publish_insert;
	bool		publish_update;
	bool		publish_delete;
	bool		publish_truncate;
	AclResult	aclresult;

	/* must have CREATE privilege on database */
	aclresult = FUNC28(MyDatabaseId, FUNC9(), ACL_CREATE);
	if (aclresult != ACLCHECK_OK)
		FUNC17(aclresult, OBJECT_DATABASE,
					   FUNC22(MyDatabaseId));

	/* FOR ALL TABLES requires superuser */
	if (stmt->for_all_tables && !FUNC30())
		FUNC18(ERROR,
				(FUNC19(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 (FUNC21("must be superuser to create FOR ALL TABLES publication"))));

	rel = FUNC32(PublicationRelationId, RowExclusiveLock);

	/* Check if name is used */
	puboid = FUNC8(PUBLICATIONNAME, Anum_pg_publication_oid,
							 FUNC2(stmt->pubname));
	if (FUNC13(puboid))
	{
		FUNC18(ERROR,
				(FUNC19(ERRCODE_DUPLICATE_OBJECT),
				 FUNC21("publication \"%s\" already exists",
						stmt->pubname)));
	}

	/* Form a tuple. */
	FUNC26(values, 0, sizeof(values));
	FUNC26(nulls, false, sizeof(nulls));

	values[Anum_pg_publication_pubname - 1] =
		FUNC6(namein, FUNC2(stmt->pubname));
	values[Anum_pg_publication_pubowner - 1] = FUNC12(FUNC9());

	FUNC27(stmt->options,
							  &publish_given, &publish_insert,
							  &publish_update, &publish_delete,
							  &publish_truncate);

	puboid = FUNC7(rel, PublicationObjectIndexId,
								Anum_pg_publication_oid);
	values[Anum_pg_publication_oid - 1] = FUNC12(puboid);
	values[Anum_pg_publication_puballtables - 1] =
		FUNC1(stmt->for_all_tables);
	values[Anum_pg_publication_pubinsert - 1] =
		FUNC1(publish_insert);
	values[Anum_pg_publication_pubupdate - 1] =
		FUNC1(publish_update);
	values[Anum_pg_publication_pubdelete - 1] =
		FUNC1(publish_delete);
	values[Anum_pg_publication_pubtruncate - 1] =
		FUNC1(publish_truncate);

	tup = FUNC23(FUNC16(rel), values, nulls);

	/* Insert tuple into catalog. */
	FUNC3(rel, tup);
	FUNC24(tup);

	FUNC29(PublicationRelationId, puboid, FUNC9());

	FUNC11(myself, PublicationRelationId, puboid);

	/* Make the changes visible. */
	FUNC5();

	if (stmt->tables)
	{
		List	   *rels;

		FUNC0(FUNC25(stmt->tables) > 0);

		rels = FUNC14(stmt->tables);
		FUNC15(puboid, rels, true, NULL);
		FUNC4(rels);
	}

	FUNC31(rel, RowExclusiveLock);

	FUNC10(PublicationRelationId, puboid, 0);

	if (wal_level != WAL_LEVEL_LOGICAL)
	{
		FUNC18(WARNING,
				(FUNC19(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC21("wal_level is insufficient to publish logical changes"),
				 FUNC20("Set wal_level to logical before creating subscriptions.")));
	}

	return myself;
}