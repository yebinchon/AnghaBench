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
typedef  int ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_3__ {void* jump; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 void* FUNC0 (int const,int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int const) ; 
 void* FUNC3 (int const,int const) ; 
 int /*<<< orphan*/  R_META_TYPE_COMMENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ut8 FUNC5(RAnal *a, RAnalOp *op, const ut8 *data, ut64 addr)
{
	if (FUNC1 (data[1],data[2])) {
		op->jump = FUNC3 (data[1], data[2]);
		FUNC4 (a, R_META_TYPE_COMMENT, addr, "--> unpredictable");
		return false;
	}
	if (!FUNC2 (data[1], data[2])) {
		op->jump = FUNC3(data[1], data[2]);
	} else {
		op->jump = FUNC0 (data[1], data[2], addr);
	}
	return true;
}