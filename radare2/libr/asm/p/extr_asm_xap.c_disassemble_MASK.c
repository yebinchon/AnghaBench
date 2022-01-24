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
typedef  int /*<<< orphan*/  ut8 ;
struct r_asm_op_t {int size; int /*<<< orphan*/  buf_asm; } ;
struct TYPE_3__ {int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(RAsm *a, struct r_asm_op_t *op, const ut8 *buf, int len) {
	char *buf_asm = FUNC1 (&op->buf_asm);
	FUNC0 (buf_asm, buf, a->pc);
	return (op->size = 2);
}