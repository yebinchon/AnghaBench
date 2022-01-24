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
struct TYPE_5__ {scalar_t__ fdw_state; } ;
struct TYPE_4__ {int /*<<< orphan*/ * conn; scalar_t__ result; } ;
typedef  TYPE_1__ PgFdwDirectModifyState ;
typedef  TYPE_2__ ForeignScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(ForeignScanState *node)
{
	PgFdwDirectModifyState *dmstate = (PgFdwDirectModifyState *) node->fdw_state;

	/* if dmstate is NULL, we are in EXPLAIN; nothing to do */
	if (dmstate == NULL)
		return;

	/* Release PGresult */
	if (dmstate->result)
		FUNC0(dmstate->result);

	/* Release remote connection */
	FUNC1(dmstate->conn);
	dmstate->conn = NULL;

	/* MemoryContext will be deleted automatically. */
}