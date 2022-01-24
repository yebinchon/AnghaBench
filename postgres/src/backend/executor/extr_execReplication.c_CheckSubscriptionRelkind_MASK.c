#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 char RELKIND_FOREIGN_TABLE ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 

void
FUNC4(char relkind, const char *nspname,
						 const char *relname)
{
	/*
	 * We currently only support writing to regular tables.  However, give a
	 * more specific error for partitioned and foreign tables.
	 */
	if (relkind == RELKIND_PARTITIONED_TABLE)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC3("cannot use relation \"%s.%s\" as logical replication target",
						nspname, relname),
				 FUNC2("\"%s.%s\" is a partitioned table.",
						   nspname, relname)));
	else if (relkind == RELKIND_FOREIGN_TABLE)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC3("cannot use relation \"%s.%s\" as logical replication target",
						nspname, relname),
				 FUNC2("\"%s.%s\" is a foreign table.",
						   nspname, relname)));

	if (relkind != RELKIND_RELATION)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC3("cannot use relation \"%s.%s\" as logical replication target",
						nspname, relname),
				 FUNC2("\"%s.%s\" is not a table.",
						   nspname, relname)));
}