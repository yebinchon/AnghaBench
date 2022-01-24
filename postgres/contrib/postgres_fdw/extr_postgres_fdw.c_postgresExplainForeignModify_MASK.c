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
struct TYPE_4__ {scalar_t__ verbose; } ;
typedef  int /*<<< orphan*/  ResultRelInfo ;
typedef  int /*<<< orphan*/  ModifyTableState ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FdwModifyPrivateUpdateSql ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ModifyTableState *mtstate,
							 ResultRelInfo *rinfo,
							 List *fdw_private,
							 int subplan_index,
							 ExplainState *es)
{
	if (es->verbose)
	{
		char	   *sql = FUNC2(FUNC1(fdw_private,
										  FdwModifyPrivateUpdateSql));

		FUNC0("Remote SQL", sql, es);
	}
}