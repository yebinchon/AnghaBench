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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_6__ {int folded; } ;
struct TYPE_5__ {int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalFunction ;
typedef  TYPE_2__ RAnalBlock ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(RCore *core, ut64 addr) {
	RAnalFunction *fcn = FUNC1 (core->anal, addr, R_ANAL_FCN_TYPE_NULL);
	if (fcn) {
		RAnalBlock *bb = FUNC0 (core->anal, fcn, addr);
		if (bb) {
			bb->folded = !bb->folded;
		} else {
			FUNC2 ();
		}
		return true;
	}
	return false;
}