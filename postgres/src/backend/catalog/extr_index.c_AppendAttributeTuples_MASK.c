#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_4__ {int attnum; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  CatalogIndexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Relation indexRelation, int numatts)
{
	Relation	pg_attribute;
	CatalogIndexState indstate;
	TupleDesc	indexTupDesc;
	int			i;

	/*
	 * open the attribute relation and its indexes
	 */
	pg_attribute = FUNC7(AttributeRelationId, RowExclusiveLock);

	indstate = FUNC2(pg_attribute);

	/*
	 * insert data from new index's tupdesc into pg_attribute
	 */
	indexTupDesc = FUNC4(indexRelation);

	for (i = 0; i < numatts; i++)
	{
		Form_pg_attribute attr = FUNC5(indexTupDesc, i);

		FUNC0(attr->attnum == i + 1);

		FUNC3(pg_attribute, attr, indstate);
	}

	FUNC1(indstate);

	FUNC6(pg_attribute, RowExclusiveLock);
}