#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ typtype; int /*<<< orphan*/  oid; int /*<<< orphan*/  typrelid; } ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 scalar_t__ TYPTYPE_COMPOSITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(HeapTuple typetuple)
{
	Form_pg_type typ = (Form_pg_type) FUNC1(typetuple);
	bool		typeOk = false;

	if (typ->typtype == TYPTYPE_COMPOSITE)
	{
		Relation	typeRelation;

		FUNC0(FUNC2(typ->typrelid));
		typeRelation = FUNC8(typ->typrelid, AccessShareLock);
		typeOk = (typeRelation->rd_rel->relkind == RELKIND_COMPOSITE_TYPE);

		/*
		 * Close the parent rel, but keep our AccessShareLock on it until xact
		 * commit.  That will prevent someone else from deleting or ALTERing
		 * the type before the typed table creation/conversion commits.
		 */
		FUNC7(typeRelation, NoLock);
	}
	if (!typeOk)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC5("type %s is not a composite type",
						FUNC6(typ->oid))));
}