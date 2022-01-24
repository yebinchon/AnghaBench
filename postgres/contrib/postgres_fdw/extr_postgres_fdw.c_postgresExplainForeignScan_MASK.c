#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ verbose; } ;
struct TYPE_12__ {int /*<<< orphan*/ * fdw_private; } ;
struct TYPE_9__ {scalar_t__ plan; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ ss; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ ForeignScanState ;
typedef  TYPE_4__ ForeignScan ;
typedef  TYPE_5__ ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,TYPE_5__*) ; 
 scalar_t__ FdwScanPrivateRelations ; 
 scalar_t__ FdwScanPrivateSelectSql ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ForeignScanState *node, ExplainState *es)
{
	List	   *fdw_private;
	char	   *sql;
	char	   *relations;

	fdw_private = ((ForeignScan *) node->ss.ps.plan)->fdw_private;

	/*
	 * Add names of relation handled by the foreign scan when the scan is a
	 * join
	 */
	if (FUNC1(fdw_private) > FdwScanPrivateRelations)
	{
		relations = FUNC3(FUNC2(fdw_private, FdwScanPrivateRelations));
		FUNC0("Relations", relations, es);
	}

	/*
	 * Add remote query, when VERBOSE option is specified.
	 */
	if (es->verbose)
	{
		sql = FUNC3(FUNC2(fdw_private, FdwScanPrivateSelectSql));
		FUNC0("Remote SQL", sql, es);
	}
}