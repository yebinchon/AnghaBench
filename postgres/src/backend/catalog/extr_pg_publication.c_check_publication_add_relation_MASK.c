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
struct TYPE_2__ {scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  Relation ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Relation targetrel)
{
	/* Give more specific error for partitioned tables */
	if (FUNC1(targetrel)->relkind == RELKIND_PARTITIONED_TABLE)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC8("\"%s\" is a partitioned table",
						FUNC2(targetrel)),
				 FUNC6("Adding partitioned tables to publications is not supported."),
				 FUNC7("You can add the table partitions individually.")));

	/* Must be table */
	if (FUNC1(targetrel)->relkind != RELKIND_RELATION)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC8("\"%s\" is not a table",
						FUNC2(targetrel)),
				 FUNC6("Only tables can be added to publications.")));

	/* Can't be system table */
	if (FUNC0(targetrel))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC8("\"%s\" is a system table",
						FUNC2(targetrel)),
				 FUNC6("System tables cannot be added to publications.")));

	/* UNLOGGED and TEMP relations cannot be part of publication. */
	if (!FUNC3(targetrel))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC8("table \"%s\" cannot be replicated",
						FUNC2(targetrel)),
				 FUNC6("Temporary and unlogged relations cannot be replicated.")));
}