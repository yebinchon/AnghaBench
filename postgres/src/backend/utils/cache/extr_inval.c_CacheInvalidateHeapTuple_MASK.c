#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ attrelid; } ;
struct TYPE_7__ {scalar_t__ oid; scalar_t__ relisshared; } ;
struct TYPE_6__ {scalar_t__ contype; scalar_t__ conrelid; } ;
struct TYPE_5__ {scalar_t__ indexrelid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_index ;
typedef  TYPE_2__* Form_pg_constraint ;
typedef  TYPE_3__* Form_pg_class ;
typedef  TYPE_4__* Form_pg_attribute ;

/* Variables and functions */
 scalar_t__ AttributeRelationId ; 
 scalar_t__ CONSTRAINT_FOREIGN ; 
 scalar_t__ ConstraintRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IndexRelationId ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ MyDatabaseId ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RegisterCatcacheInvalidation ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ RelationRelationId ; 

void
FUNC12(Relation relation,
						 HeapTuple tuple,
						 HeapTuple newtuple)
{
	Oid			tupleRelId;
	Oid			databaseId;
	Oid			relationId;

	/* Do nothing during bootstrap */
	if (FUNC1())
		return;

	/*
	 * We only need to worry about invalidation for tuples that are in system
	 * catalogs; user-relation tuples are never in catcaches and can't affect
	 * the relcache either.
	 */
	if (!FUNC2(relation))
		return;

	/*
	 * IsCatalogRelation() will return true for TOAST tables of system
	 * catalogs, but we don't care about those, either.
	 */
	if (FUNC4(relation))
		return;

	/*
	 * If we're not prepared to queue invalidation messages for this
	 * subtransaction level, get ready now.
	 */
	FUNC6();

	/*
	 * First let the catcache do its thing
	 */
	tupleRelId = FUNC10(relation);
	if (FUNC11(tupleRelId))
	{
		databaseId = FUNC3(tupleRelId) ? InvalidOid : MyDatabaseId;
		FUNC9(databaseId, tupleRelId);
	}
	else
		FUNC7(relation, tuple, newtuple,
									  RegisterCatcacheInvalidation);

	/*
	 * Now, is this tuple one of the primary definers of a relcache entry? See
	 * comments in file header for deeper explanation.
	 *
	 * Note we ignore newtuple here; we assume an update cannot move a tuple
	 * from being part of one relcache entry to being part of another.
	 */
	if (tupleRelId == RelationRelationId)
	{
		Form_pg_class classtup = (Form_pg_class) FUNC0(tuple);

		relationId = classtup->oid;
		if (classtup->relisshared)
			databaseId = InvalidOid;
		else
			databaseId = MyDatabaseId;
	}
	else if (tupleRelId == AttributeRelationId)
	{
		Form_pg_attribute atttup = (Form_pg_attribute) FUNC0(tuple);

		relationId = atttup->attrelid;

		/*
		 * KLUGE ALERT: we always send the relcache event with MyDatabaseId,
		 * even if the rel in question is shared (which we can't easily tell).
		 * This essentially means that only backends in this same database
		 * will react to the relcache flush request.  This is in fact
		 * appropriate, since only those backends could see our pg_attribute
		 * change anyway.  It looks a bit ugly though.  (In practice, shared
		 * relations can't have schema changes after bootstrap, so we should
		 * never come here for a shared rel anyway.)
		 */
		databaseId = MyDatabaseId;
	}
	else if (tupleRelId == IndexRelationId)
	{
		Form_pg_index indextup = (Form_pg_index) FUNC0(tuple);

		/*
		 * When a pg_index row is updated, we should send out a relcache inval
		 * for the index relation.  As above, we don't know the shared status
		 * of the index, but in practice it doesn't matter since indexes of
		 * shared catalogs can't have such updates.
		 */
		relationId = indextup->indexrelid;
		databaseId = MyDatabaseId;
	}
	else if (tupleRelId == ConstraintRelationId)
	{
		Form_pg_constraint constrtup = (Form_pg_constraint) FUNC0(tuple);

		/*
		 * Foreign keys are part of relcache entries, too, so send out an
		 * inval for the table that the FK applies to.
		 */
		if (constrtup->contype == CONSTRAINT_FOREIGN &&
			FUNC5(constrtup->conrelid))
		{
			relationId = constrtup->conrelid;
			databaseId = MyDatabaseId;
		}
		else
			return;
	}
	else
		return;

	/*
	 * Yes.  We need to register a relcache invalidation event.
	 */
	FUNC8(databaseId, relationId);
}