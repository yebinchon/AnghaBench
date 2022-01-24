#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  subtype; } ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relkind; scalar_t__ reloftype; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_3__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT_AddColumnRecurse ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(List **wqueue, Relation rel, bool recurse, bool recursing,
				bool is_view, AlterTableCmd *cmd, LOCKMODE lockmode)
{
	if (rel->rd_rel->reloftype && !recursing)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC3("cannot add column to typed table")));

	if (rel->rd_rel->relkind == RELKIND_COMPOSITE_TYPE)
		FUNC0(wqueue, rel, cmd, lockmode);

	if (recurse && !is_view)
		cmd->subtype = AT_AddColumnRecurse;
}