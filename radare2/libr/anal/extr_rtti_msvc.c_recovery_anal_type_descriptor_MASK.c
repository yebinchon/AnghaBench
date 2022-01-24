#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_10__ {int /*<<< orphan*/  vt_context; int /*<<< orphan*/  addr_td; int /*<<< orphan*/  type_descriptors; } ;
struct TYPE_9__ {int /*<<< orphan*/ * col; int /*<<< orphan*/  valid; int /*<<< orphan*/  td; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ RecoveryTypeDescriptor ;
typedef  int /*<<< orphan*/  RecoveryCompleteObjectLocator ;
typedef  TYPE_2__ RRTTIMSVCAnalContext ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

RecoveryTypeDescriptor *FUNC5(RRTTIMSVCAnalContext *context, ut64 addr, RecoveryCompleteObjectLocator *col) {
	RecoveryTypeDescriptor *td = FUNC0 (context->addr_td, addr, NULL);
	if (td) {
		if (col != NULL) {
			td->col = col;
		}
		return td;
	}

	td = FUNC3 ();
	if (!td) {
		return NULL;
	}
	FUNC2 (&context->type_descriptors, td);
	FUNC1 (context->addr_td, addr, td);
	td->addr = addr;
	td->valid = FUNC4 (context->vt_context, addr, &td->td);
	if (!td->valid) {
		return td;
	}

	td->col = col;

	return td;
}