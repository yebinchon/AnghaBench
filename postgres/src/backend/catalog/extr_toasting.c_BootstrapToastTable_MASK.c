#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(char *relName, Oid toastOid, Oid toastIndexOid)
{
	Relation	rel;

	rel = FUNC7(FUNC5(NULL, relName, -1), AccessExclusiveLock);

	if (rel->rd_rel->relkind != RELKIND_RELATION &&
		rel->rd_rel->relkind != RELKIND_MATVIEW)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC4("\"%s\" is not a table or materialized view",
						relName)));

	/* create_toast_table does all the work */
	if (!FUNC0(rel, toastOid, toastIndexOid, (Datum) 0,
							AccessExclusiveLock, false))
		FUNC1(ERROR, "\"%s\" does not require a toast table",
			 relName);

	FUNC6(rel, NoLock);
}