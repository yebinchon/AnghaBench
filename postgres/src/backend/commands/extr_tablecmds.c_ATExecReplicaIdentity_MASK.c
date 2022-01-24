#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16 ;
struct TYPE_25__ {int /*<<< orphan*/  attname; int /*<<< orphan*/  attnotnull; } ;
struct TYPE_24__ {int /*<<< orphan*/  rd_att; TYPE_4__* rd_index; TYPE_2__* rd_indam; TYPE_1__* rd_rel; } ;
struct TYPE_23__ {scalar_t__ identity_type; scalar_t__ name; } ;
struct TYPE_21__ {scalar_t__* values; } ;
struct TYPE_22__ {scalar_t__ indrelid; TYPE_3__ indkey; int /*<<< orphan*/  indisvalid; int /*<<< orphan*/  indimmediate; int /*<<< orphan*/  indisunique; } ;
struct TYPE_20__ {int /*<<< orphan*/  amcanunique; } ;
struct TYPE_19__ {int /*<<< orphan*/  relnamespace; } ;
typedef  TYPE_5__ ReplicaIdentityStmt ;
typedef  TYPE_6__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_7__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_COLUMN_REFERENCE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ NIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ REPLICA_IDENTITY_DEFAULT ; 
 scalar_t__ REPLICA_IDENTITY_FULL ; 
 scalar_t__ REPLICA_IDENTITY_INDEX ; 
 scalar_t__ REPLICA_IDENTITY_NOTHING ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  ShareLock ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC16(Relation rel, ReplicaIdentityStmt *stmt, LOCKMODE lockmode)
{
	Oid			indexOid;
	Relation	indexRel;
	int			key;

	if (stmt->identity_type == REPLICA_IDENTITY_DEFAULT)
	{
		FUNC15(rel, stmt->identity_type, InvalidOid, true);
		return;
	}
	else if (stmt->identity_type == REPLICA_IDENTITY_FULL)
	{
		FUNC15(rel, stmt->identity_type, InvalidOid, true);
		return;
	}
	else if (stmt->identity_type == REPLICA_IDENTITY_NOTHING)
	{
		FUNC15(rel, stmt->identity_type, InvalidOid, true);
		return;
	}
	else if (stmt->identity_type == REPLICA_IDENTITY_INDEX)
	{
		 /* fallthrough */ ;
	}
	else
		FUNC8(ERROR, "unexpected identity type %u", stmt->identity_type);


	/* Check that the index exists */
	indexOid = FUNC12(stmt->name, rel->rd_rel->relnamespace);
	if (!FUNC2(indexOid))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_UNDEFINED_OBJECT),
				 FUNC11("index \"%s\" for table \"%s\" does not exist",
						stmt->name, FUNC5(rel))));

	indexRel = FUNC14(indexOid, ShareLock);

	/* Check that the index is on the relation we're altering. */
	if (indexRel->rd_index == NULL ||
		indexRel->rd_index->indrelid != FUNC6(rel))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("\"%s\" is not an index for table \"%s\"",
						FUNC5(indexRel),
						FUNC5(rel))));
	/* The AM must support uniqueness, and the index must in fact be unique. */
	if (!indexRel->rd_indam->amcanunique ||
		!indexRel->rd_index->indisunique)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("cannot use non-unique index \"%s\" as replica identity",
						FUNC5(indexRel))));
	/* Deferred indexes are not guaranteed to be always unique. */
	if (!indexRel->rd_index->indimmediate)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC11("cannot use non-immediate index \"%s\" as replica identity",
						FUNC5(indexRel))));
	/* Expression indexes aren't supported. */
	if (FUNC3(indexRel) != NIL)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC11("cannot use expression index \"%s\" as replica identity",
						FUNC5(indexRel))));
	/* Predicate indexes aren't supported. */
	if (FUNC4(indexRel) != NIL)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC11("cannot use partial index \"%s\" as replica identity",
						FUNC5(indexRel))));
	/* And neither are invalid indexes. */
	if (!indexRel->rd_index->indisvalid)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC11("cannot use invalid index \"%s\" as replica identity",
						FUNC5(indexRel))));

	/* Check index for nullable columns. */
	for (key = 0; key < FUNC0(indexRel); key++)
	{
		int16		attno = indexRel->rd_index->indkey.values[key];
		Form_pg_attribute attr;

		/*
		 * Reject any other system columns.  (Going forward, we'll disallow
		 * indexes containing such columns in the first place, but they might
		 * exist in older branches.)
		 */
		if (attno <= 0)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_INVALID_COLUMN_REFERENCE),
					 FUNC11("index \"%s\" cannot be used as replica identity because column %d is a system column",
							FUNC5(indexRel), attno)));

		attr = FUNC7(rel->rd_att, attno - 1);
		if (!attr->attnotnull)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC11("index \"%s\" cannot be used as replica identity because column \"%s\" is nullable",
							FUNC5(indexRel),
							FUNC1(attr->attname))));
	}

	/* This index is suitable for use as a replica identity. Mark it. */
	FUNC15(rel, stmt->identity_type, indexOid, true);

	FUNC13(indexRel, NoLock);
}