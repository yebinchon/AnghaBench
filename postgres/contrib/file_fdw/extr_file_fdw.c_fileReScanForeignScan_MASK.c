#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  options; int /*<<< orphan*/  is_program; int /*<<< orphan*/  filename; int /*<<< orphan*/  cstate; } ;
struct TYPE_5__ {int /*<<< orphan*/  ss_currentRelation; } ;
struct TYPE_6__ {TYPE_1__ ss; scalar_t__ fdw_state; } ;
typedef  TYPE_2__ ForeignScanState ;
typedef  TYPE_3__ FileFdwExecutionState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 

__attribute__((used)) static void
FUNC2(ForeignScanState *node)
{
	FileFdwExecutionState *festate = (FileFdwExecutionState *) node->fdw_state;

	FUNC1(festate->cstate);

	festate->cstate = FUNC0(NULL,
									node->ss.ss_currentRelation,
									festate->filename,
									festate->is_program,
									NULL,
									NIL,
									festate->options);
}