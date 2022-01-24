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
struct TYPE_10__ {void* refsCol; void* xrefsCol; scalar_t__ addr; int /*<<< orphan*/  core; TYPE_1__* fcn; int /*<<< orphan*/  mainCol; int /*<<< orphan*/  cur; } ;
struct TYPE_9__ {TYPE_1__* fcn; scalar_t__ addr; } ;
struct TYPE_8__ {scalar_t__ addr; } ;
typedef  TYPE_2__ RCoreVisualViewGraphItem ;
typedef  TYPE_3__ RCoreVisualViewGraph ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(RCoreVisualViewGraph *status) {
	RCoreVisualViewGraphItem *item = FUNC5 (status->mainCol, status->cur);
	if (!item) {
		FUNC4 (status->mainCol);
		FUNC1 (status);
		return;
	}

	status->addr = item->addr;
	status->fcn = item->fcn;

	// Update xrefs and refs columns based on selected element in fcns column
	if (status->fcn && status->fcn->addr) {
		status->xrefsCol = FUNC3 (status->core, status->fcn->addr);
		status->refsCol = FUNC0 (status->core, status->fcn->addr);
	} else {
		status->xrefsCol = FUNC3 (status->core, status->addr);
		status->refsCol = FUNC6 (free);
	}
	FUNC2 (status, status->xrefsCol);
	FUNC2 (status, status->refsCol);
}