#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int location; int /*<<< orphan*/  collOid; TYPE_1__* collClause; } ;
struct TYPE_4__ {int location; int /*<<< orphan*/  collname; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ColumnDef ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

Oid
FUNC8(ParseState *pstate, ColumnDef *coldef, Oid typeOid)
{
	Oid			result;
	Oid			typcollation = FUNC6(typeOid);
	int			location = coldef->location;

	if (coldef->collClause)
	{
		/* We have a raw COLLATE clause, so look up the collation */
		location = coldef->collClause->location;
		result = FUNC0(pstate, coldef->collClause->collname,
								 location);
	}
	else if (FUNC1(coldef->collOid))
	{
		/* Precooked collation spec, use that */
		result = coldef->collOid;
	}
	else
	{
		/* Use the type's default collation if any */
		result = typcollation;
	}

	/* Complain if COLLATE is applied to an uncollatable type */
	if (FUNC1(result) && !FUNC1(typcollation))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_DATATYPE_MISMATCH),
				 FUNC4("collations are not supported by type %s",
						FUNC5(typeOid)),
				 FUNC7(pstate, location)));

	return result;
}