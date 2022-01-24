#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  attnotnull; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  AlteredTableInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void
FUNC11(AlteredTableInfo *tab, Relation rel,
				   const char *colName, LOCKMODE lockmode)
{
	HeapTuple	tuple;

	tuple = FUNC5(FUNC3(rel), colName);

	if (!FUNC1(tuple))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_UNDEFINED_COLUMN),
				 FUNC10("column \"%s\" of relation \"%s\" does not exist",
						colName, FUNC2(rel))));

	if (!((Form_pg_attribute) FUNC0(tuple))->attnotnull)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_INVALID_TABLE_DEFINITION),
				 FUNC10("constraint must be added to child tables too"),
				 FUNC8("Column \"%s\" of relation \"%s\" is not already NOT NULL.",
						   colName, FUNC2(rel)),
				 FUNC9("Do not specify the ONLY keyword.")));

	FUNC4(tuple);
}