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
struct TYPE_3__ {scalar_t__ nhwbps; } ;
typedef  int /*<<< orphan*/  RDebug ;
typedef  int /*<<< orphan*/  RBreakpointItem ;
typedef  TYPE_1__ RBreakpoint ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_DRX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bool FUNC2(RDebug *dbg, RBreakpoint *bp, RBreakpointItem *b) {
	if (bp->nhwbps > 0) {
		FUNC1 (dbg, R_REG_TYPE_DRX, false);
		FUNC0 (dbg, bp->nhwbps, 0, 0, 0, 0);
		FUNC1 (dbg, R_REG_TYPE_DRX, true);
		bp->nhwbps--;
		return true;
	}
	return false;
}