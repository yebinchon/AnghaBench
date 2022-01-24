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
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_9__ {int /*<<< orphan*/  mnem; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ pc; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  buf_asm; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  TYPE_2__ RAsm ;
typedef  TYPE_3__ HexInsn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (RAsm *a, RAsmOp *op, const ut8 *buf, int l) {
	HexInsn hi = {0};
	ut32 data = FUNC1 (buf);
	op->size = FUNC0 (data, &hi, (ut32) a->pc);
	FUNC2 (&op->buf_asm, hi.mnem);
	return op->size;
}