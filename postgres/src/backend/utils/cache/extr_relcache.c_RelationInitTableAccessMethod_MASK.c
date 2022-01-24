#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* amhandler; } ;
struct TYPE_8__ {void* rd_amhandler; TYPE_1__* rd_rel; } ;
struct TYPE_7__ {scalar_t__ relkind; scalar_t__ relam; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_am ;

/* Variables and functions */
 int /*<<< orphan*/  AMOID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* HEAP_TABLE_AM_HANDLER_OID ; 
 scalar_t__ HEAP_TABLE_AM_OID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC9(Relation relation)
{
	HeapTuple	tuple;
	Form_pg_am	aform;

	if (relation->rd_rel->relkind == RELKIND_SEQUENCE)
	{
		/*
		 * Sequences are currently accessed like heap tables, but it doesn't
		 * seem prudent to show that in the catalog. So just overwrite it
		 * here.
		 */
		relation->rd_amhandler = HEAP_TABLE_AM_HANDLER_OID;
	}
	else if (FUNC4(relation))
	{
		/*
		 * Avoid doing a syscache lookup for catalog tables.
		 */
		FUNC0(relation->rd_rel->relam == HEAP_TABLE_AM_OID);
		relation->rd_amhandler = HEAP_TABLE_AM_HANDLER_OID;
	}
	else
	{
		/*
		 * Look up the table access method, save the OID of its handler
		 * function.
		 */
		FUNC0(relation->rd_rel->relam != InvalidOid);
		tuple = FUNC7(AMOID,
								FUNC5(relation->rd_rel->relam));
		if (!FUNC2(tuple))
			FUNC8(ERROR, "cache lookup failed for access method %u",
				 relation->rd_rel->relam);
		aform = (Form_pg_am) FUNC1(tuple);
		relation->rd_amhandler = aform->amhandler;
		FUNC6(tuple);
	}

	/*
	 * Now we can fetch the table AM's API struct
	 */
	FUNC3(relation);
}