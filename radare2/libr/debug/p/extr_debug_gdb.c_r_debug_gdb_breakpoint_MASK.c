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
struct TYPE_3__ {int size; int perm; int /*<<< orphan*/  addr; int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ RBreakpointItem ;
typedef  int /*<<< orphan*/  RBreakpoint ;

/* Variables and functions */
#define  R_BP_PROT_EXEC 131 
#define  R_PERM_ACCESS 130 
#define  R_PERM_R 129 
#define  R_PERM_W 128 
 int /*<<< orphan*/  desc ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC10 (RBreakpoint *bp, RBreakpointItem *b, bool set) {
	int ret = 0, bpsize;
	if (!b) {
		return false;
	}
	bpsize = b->size;
        // TODO handle conditions
	switch (b->perm) {
	case R_BP_PROT_EXEC : {
		if (set) {
			ret = b->hw?
					FUNC7 (desc, b->addr, "", bpsize):
					FUNC5 (desc, b->addr, "", bpsize);
		} else {
			ret = b->hw ? FUNC2 (desc, b->addr, bpsize) : FUNC0 (desc, b->addr, bpsize);
		}
		break;
	}
	// TODO handle size (area of watch in upper layer and then bpsize. For the moment watches are set on exact on byte
	case R_PERM_W: {
		if (set) {
			FUNC9 (desc, b->addr, "", 1);
		} else {
			FUNC4 (desc, b->addr, 1);
		}
		break;
	}
	case R_PERM_R: {
		if (set) {
			FUNC8 (desc, b->addr, "", 1);
		} else {
			FUNC3 (desc, b->addr, 1);
		}
		break;
	}
	case R_PERM_ACCESS: {
		if (set) {
			FUNC6 (desc, b->addr, "", 1);
		} else {
			FUNC1 (desc, b->addr, 1);
		}
		break;
	}
	}
	return !ret;
}