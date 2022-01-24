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
struct TYPE_3__ {int /*<<< orphan*/  esil; } ;
typedef  TYPE_1__ RAnalOp ;

/* Variables and functions */
 int V810_FLAG_CY ; 
 int V810_FLAG_OV ; 
 int V810_FLAG_S ; 
 int V810_FLAG_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC1(RAnalOp *op, int flags) {
	if (flags & V810_FLAG_CY) {
		FUNC0 (&op->esil, ",31,$c,cy,:=");
	}
	if (flags & V810_FLAG_OV) {
		FUNC0 (&op->esil, ",31,$o,ov,:=");
	}
	if (flags & V810_FLAG_S) {
		FUNC0 (&op->esil, ",31,$s,s,:=");
	}
	if (flags & V810_FLAG_Z) {
		FUNC0 (&op->esil, ",$z,z,:=");
	}
}