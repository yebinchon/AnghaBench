#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* relation; int /*<<< orphan*/  cmds; } ;
struct TYPE_5__ {int /*<<< orphan*/  inh; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_2__ AlterTableStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(Oid relid, LOCKMODE lockmode, AlterTableStmt *stmt)
{
	Relation	rel;

	/* Caller is required to provide an adequate lock. */
	rel = FUNC2(relid, NoLock);

	FUNC1(rel, "ALTER TABLE");

	FUNC0(stmt, rel, stmt->cmds, stmt->relation->inh, lockmode);
}