#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Value ;
struct TYPE_17__ {int objtype; int /*<<< orphan*/  comment; scalar_t__ object; } ;
struct TYPE_16__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
struct TYPE_14__ {int /*<<< orphan*/  relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ ObjectAddress ;
typedef  TYPE_4__ CommentStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_DATABASE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__ InvalidObjectAddress ; 
 int /*<<< orphan*/  NoLock ; 
#define  OBJECT_COLUMN 128 
 int OBJECT_DATABASE ; 
 int OBJECT_ROLE ; 
 int OBJECT_TABLESPACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELKIND_COMPOSITE_TYPE ; 
 int /*<<< orphan*/  RELKIND_FOREIGN_TABLE ; 
 int /*<<< orphan*/  RELKIND_MATVIEW ; 
 int /*<<< orphan*/  RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  RELKIND_RELATION ; 
 int /*<<< orphan*/  RELKIND_VIEW ; 
 char* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,TYPE_3__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 TYPE_3__ FUNC10 (int,scalar_t__,TYPE_2__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 

ObjectAddress
FUNC13(CommentStmt *stmt)
{
	Relation	relation;
	ObjectAddress address = InvalidObjectAddress;

	/*
	 * When loading a dump, we may see a COMMENT ON DATABASE for the old name
	 * of the database.  Erroring out would prevent pg_restore from completing
	 * (which is really pg_restore's fault, but for now we will work around
	 * the problem here).  Consensus is that the best fix is to treat wrong
	 * database name as a WARNING not an ERROR; hence, the following special
	 * case.
	 */
	if (stmt->objtype == OBJECT_DATABASE)
	{
		char	   *database = FUNC12((Value *) stmt->object);

		if (!FUNC3(FUNC9(database, true)))
		{
			FUNC6(WARNING,
					(FUNC7(ERRCODE_UNDEFINED_DATABASE),
					 FUNC8("database \"%s\" does not exist", database)));
			return address;
		}
	}

	/*
	 * Translate the parser representation that identifies this object into an
	 * ObjectAddress.  get_object_address() will throw an error if the object
	 * does not exist, and will also acquire a lock on the target to guard
	 * against concurrent DROP operations.
	 */
	address = FUNC10(stmt->objtype, stmt->object,
								 &relation, ShareUpdateExclusiveLock, false);

	/* Require ownership of the target object. */
	FUNC5(FUNC2(), stmt->objtype, address,
						   stmt->object, relation);

	/* Perform other integrity checks as needed. */
	switch (stmt->objtype)
	{
		case OBJECT_COLUMN:

			/*
			 * Allow comments only on columns of tables, views, materialized
			 * views, composite types, and foreign tables (which are the only
			 * relkinds for which pg_dump will dump per-column comments).  In
			 * particular we wish to disallow comments on index columns,
			 * because the naming of an index's columns may change across PG
			 * versions, so dumping per-column comments could create reload
			 * failures.
			 */
			if (relation->rd_rel->relkind != RELKIND_RELATION &&
				relation->rd_rel->relkind != RELKIND_VIEW &&
				relation->rd_rel->relkind != RELKIND_MATVIEW &&
				relation->rd_rel->relkind != RELKIND_COMPOSITE_TYPE &&
				relation->rd_rel->relkind != RELKIND_FOREIGN_TABLE &&
				relation->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
				FUNC6(ERROR,
						(FUNC7(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC8("\"%s\" is not a table, view, materialized view, composite type, or foreign table",
								FUNC4(relation))));
			break;
		default:
			break;
	}

	/*
	 * Databases, tablespaces, and roles are cluster-wide objects, so any
	 * comments on those objects are recorded in the shared pg_shdescription
	 * catalog.  Comments on all other objects are recorded in pg_description.
	 */
	if (stmt->objtype == OBJECT_DATABASE || stmt->objtype == OBJECT_TABLESPACE
		|| stmt->objtype == OBJECT_ROLE)
		FUNC1(address.objectId, address.classId, stmt->comment);
	else
		FUNC0(address.objectId, address.classId, address.objectSubId,
					   stmt->comment);

	/*
	 * If get_object_address() opened the relation for us, we close it to keep
	 * the reference count correct - but we retain any locks acquired by
	 * get_object_address() until commit time, to guard against concurrent
	 * activity.
	 */
	if (relation != NULL)
		FUNC11(relation, NoLock);

	return address;
}