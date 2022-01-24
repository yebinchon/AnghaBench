#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ newTableSpace; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_1__ AlteredTableInfo ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ MyDatabaseTableSpace ; 
 int /*<<< orphan*/  OBJECT_TABLESPACE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(AlteredTableInfo *tab, Relation rel, const char *tablespacename, LOCKMODE lockmode)
{
	Oid			tablespaceId;

	/* Check that the tablespace exists */
	tablespaceId = FUNC6(tablespacename, false);

	/* Check permissions except when moving to database's default */
	if (FUNC1(tablespaceId) && tablespaceId != MyDatabaseTableSpace)
	{
		AclResult	aclresult;

		aclresult = FUNC7(tablespaceId, FUNC0(), ACL_CREATE);
		if (aclresult != ACLCHECK_OK)
			FUNC2(aclresult, OBJECT_TABLESPACE, tablespacename);
	}

	/* Save info for Phase 3 to do the real work */
	if (FUNC1(tab->newTableSpace))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_SYNTAX_ERROR),
				 FUNC5("cannot have multiple SET TABLESPACE subcommands")));

	tab->newTableSpace = tablespaceId;
}