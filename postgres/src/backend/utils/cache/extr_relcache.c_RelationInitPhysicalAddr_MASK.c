#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ reltablespace; scalar_t__ relfilenode; } ;
struct TYPE_10__ {scalar_t__ spcNode; scalar_t__ relNode; int /*<<< orphan*/  dbNode; } ;
struct TYPE_11__ {int /*<<< orphan*/  rd_id; TYPE_2__ rd_node; TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ reltablespace; int /*<<< orphan*/  relisshared; scalar_t__ relfilenode; int /*<<< orphan*/  relkind; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* Form_pg_class ;

/* Variables and functions */
 scalar_t__ ClassOidIndexId ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 scalar_t__ MyDatabaseTableSpace ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(Relation relation)
{
	/* these relations kinds never have storage */
	if (!FUNC5(relation->rd_rel->relkind))
		return;

	if (relation->rd_rel->reltablespace)
		relation->rd_node.spcNode = relation->rd_rel->reltablespace;
	else
		relation->rd_node.spcNode = MyDatabaseTableSpace;
	if (relation->rd_node.spcNode == GLOBALTABLESPACE_OID)
		relation->rd_node.dbNode = InvalidOid;
	else
		relation->rd_node.dbNode = MyDatabaseId;

	if (relation->rd_rel->relfilenode)
	{
		/*
		 * Even if we are using a decoding snapshot that doesn't represent the
		 * current state of the catalog we need to make sure the filenode
		 * points to the current file since the older file will be gone (or
		 * truncated). The new file will still contain older rows so lookups
		 * in them will work correctly. This wouldn't work correctly if
		 * rewrites were allowed to change the schema in an incompatible way,
		 * but those are prevented both on catalog tables and on user tables
		 * declared as additional catalog tables.
		 */
		if (FUNC2()
			&& FUNC8(relation)
			&& FUNC3())
		{
			HeapTuple	phys_tuple;
			Form_pg_class physrel;

			phys_tuple = FUNC10(FUNC7(relation),
										FUNC7(relation) != ClassOidIndexId,
										true);
			if (!FUNC1(phys_tuple))
				FUNC11(ERROR, "could not find pg_class entry for %u",
					 FUNC7(relation));
			physrel = (Form_pg_class) FUNC0(phys_tuple);

			relation->rd_rel->reltablespace = physrel->reltablespace;
			relation->rd_rel->relfilenode = physrel->relfilenode;
			FUNC12(phys_tuple);
		}

		relation->rd_node.relNode = relation->rd_rel->relfilenode;
	}
	else
	{
		/* Consult the relation mapper */
		relation->rd_node.relNode =
			FUNC9(relation->rd_id,
									 relation->rd_rel->relisshared);
		if (!FUNC4(relation->rd_node.relNode))
			FUNC11(ERROR, "could not find relation mapping for relation \"%s\", OID %u",
				 FUNC6(relation), relation->rd_id);
	}
}