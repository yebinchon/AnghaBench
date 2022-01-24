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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  csh ;
typedef  int /*<<< orphan*/  cs_insn ;
struct TYPE_3__ {int /*<<< orphan*/  esil; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, csh *handle, cs_insn *insn, int pcdelta, char (*str)[32], const char *opchar) {
	const char *dst = FUNC0(0);
	const char *src;
	bool noflags = false;
	if (!FUNC3 (dst, "pc")) {	//this is because strbuf_prepend doesn't exist and E_TOO_LAZY
//		r_strbuf_append (&op->esil, "$$,pc,=,");
		noflags = true;
	}
	if (FUNC1() == 3) {
		FUNC2 (&op->esil, "%s,0xffffffff,&,%s,=,", FUNC0 (1), dst);
		src = FUNC0 (2);
	} else {
//		src = (!strcmp (ARG (1), "pc")) ? "$$" : ARG (1);
		src = FUNC0 (1);

	}
	FUNC2 (&op->esil, "%s,%s,%s,0xffffffff,&,%s,=", src, dst, opchar, dst);
	if (noflags) {
		return;
	}
	FUNC2 (&op->esil, ",$z,zf,:=,%s,cf,:=,vf,=,0,nf,=",
			(!FUNC3 (opchar, "+") ? "30,$c,31,$c,^,31,$c" : "30,$c,31,$c,^,32,$b"));
}