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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_6__ {int /*<<< orphan*/  pc; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  buf_asm; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  TYPE_2__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	int dlen = 0;
	char *s = FUNC1 (a->pc, buf, len, &dlen);
	if (dlen < 0) {
		dlen = 0;
	}
	if (s) {
		FUNC2 (&op->buf_asm, s);
		FUNC0 (s);
	}
	op->size = dlen;
	return dlen;
}