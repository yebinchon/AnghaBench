#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  txt; TYPE_1__ member_0; } ;
typedef  TYPE_2__ WasmOp ;
struct TYPE_9__ {int size; } ;
typedef  TYPE_3__ RAsmOp ;
typedef  int /*<<< orphan*/  RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	WasmOp wop = {0};
	int ret = FUNC2 (&wop, buf, len);
	FUNC1 (op, wop.txt);
	FUNC0 (wop.txt);
	op->size = ret;
	return op->size;
}