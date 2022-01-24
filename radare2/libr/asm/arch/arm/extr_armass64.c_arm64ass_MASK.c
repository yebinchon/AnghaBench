#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int ut32 ;
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ArmOp ;

/* Variables and functions */
 int UT32_MAX ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int*,char const*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*,TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,int) ; 
 int FUNC16 (TYPE_1__*,int) ; 
 int FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*,int) ; 

bool FUNC20(const char *str, ut64 addr, ut32 *op) {
	ArmOp ops = {0};
	if (!FUNC14 (str, &ops)) {
		return false;
	}
	/* TODO: write tests for this and move out the regsize logic into the mov */
	if (!FUNC19 (str, "mov", 3)) {
		*op = FUNC10 (&ops);
		return *op != -1;
	}
	if (!FUNC19 (str, "cmp", 3)) {
		*op = FUNC6 (&ops);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldrb", 4)) {
		*op = FUNC5 (&ops, 0x00004039);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldrh", 4)) {
		*op = FUNC5 (&ops, 0x00004078);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldrsh", 5)) {
		*op = FUNC5 (&ops, 0x0000c078);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldrsw", 5)) {
		*op = FUNC5 (&ops, 0x000080b8);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldrsb", 5)) {
		*op = FUNC5 (&ops, 0x0000c039);
		return *op != -1;
	}
	if (!FUNC19 (str, "strb", 4)) {
		*op = FUNC5 (&ops, 0x00000039);
		return *op != -1;
	}
	if (!FUNC19 (str, "strh", 4)) {
		*op = FUNC5 (&ops, 0x00000078);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldr", 3)) {
		*op = FUNC15 (&ops, 0x000040f8);
		return *op != -1;
	}
	if (!FUNC19 (str, "stur", 4)) {
		*op = FUNC16 (&ops, 0x000000f8);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldur", 4)) {
		*op = FUNC16 (&ops, 0x000040f8);
		return *op != -1;
	}
	if (!FUNC19 (str, "str", 3)) {
		*op = FUNC15 (&ops, 0x000000f8);
		return *op != -1;
	}
	if (!FUNC19 (str, "stp", 3)) {
		*op = FUNC17 (&ops, 0x000000a9);
		return *op != -1;
	}
	if (!FUNC19 (str, "ldp", 3)) {
		*op = FUNC17 (&ops, 0x000040a9);
		return *op != -1;
	}
	if (!FUNC19 (str, "sub", 3)) { // w
		*op = FUNC2 (&ops, 0xd1);
		return *op != -1;
	}
	if (!FUNC19 (str, "add x", 5)) {
		*op = FUNC2 (&ops, 0x91);
		return *op != -1;
	}
	if (!FUNC19 (str, "add w", 5)) {
		*op = FUNC2 (&ops, 0x11);
		return *op != -1;
	}
	if (!FUNC19 (str, "adr x", 5)) { // w
		*op = FUNC0 (&ops, addr);
		return *op != -1;
	}
	if (!FUNC19 (str, "adrp x", 6)) {
		*op = FUNC1 (&ops, addr, 0x00000090);
		return *op != -1;
	}
	if (!FUNC19 (str, "neg", 3)) {
		*op = FUNC12 (&ops);
		return *op != -1;
	}
	if (!FUNC18 (str, "isb")) {
		*op = 0xdf3f03d5;
		return *op != -1;
	}
	// PAC
	if (FUNC8 (op, str)) {
		return true;
	}
	if (!FUNC18 (str, "nop")) {
		*op = 0x1f2003d5;
		return *op != -1;
	}
	if (!FUNC18 (str, "ret")) {
		*op = 0xc0035fd6;
		return true;
	}
	if (!FUNC19 (str, "msr ", 4)) {
		*op = FUNC11 (&ops, 0);
		if (*op != UT32_MAX) {
			return true;
		}
	}
	if (!FUNC19 (str, "mrs ", 4)) {
		*op = FUNC11 (&ops, 1);
		if (*op != UT32_MAX) {
			return true;
		}
	}
	if (!FUNC19 (str, "orr ", 4)) {
		*op = FUNC13 (&ops, addr);
		return *op != UT32_MAX;
	}
	if (!FUNC19 (str, "svc ", 4)) { // system level exception
		*op = FUNC7 (&ops, 0x010000d4);
		return *op != -1;
	}
	if (!FUNC19 (str, "hvc ", 4)) { // hypervisor level exception
		*op = FUNC7 (&ops, 0x020000d4);
		return *op != -1;
	}
	if (!FUNC19 (str, "smc ", 4)) { // secure monitor exception
		*op = FUNC7 (&ops, 0x030000d4);
		return *op != -1;
	}
	if (!FUNC19 (str, "brk ", 4)) { // breakpoint
		*op = FUNC7 (&ops, 0x000020d4);
		return *op != -1;
	}
	if (!FUNC19 (str, "hlt ", 4)) { // halt
		*op = FUNC7 (&ops, 0x000040d4);
		return *op != -1;
	}
	if (!FUNC19 (str, "b ", 2)) {
		*op = FUNC4 (&ops, addr, 0x14);
		return *op != -1;
	}
	if (!FUNC19 (str, "b.eq ", 5)) {
		*op = FUNC3 (&ops, addr, 0x00000054);
		return *op != -1;
	}
	if (!FUNC19 (str, "b.hs ", 5)) {
		*op = FUNC3 (&ops, addr, 0x02000054);
		return *op != -1;
	}
	if (!FUNC19 (str, "bl ", 3)) {
		*op = FUNC4 (&ops, addr, 0x94);
		return *op != -1;
	}
	if (!FUNC19 (str, "br x", 4)) {
		*op = FUNC4 (&ops, addr, 0x1fd6);
		return *op != -1;
	}
	if (!FUNC19 (str, "blr x", 5)) {
		*op = FUNC4 (&ops, addr, 0x3fd6);
		return *op != -1;
	}
	if (!FUNC19 (str, "dmb ", 4)) {
		*op = FUNC9 (&ops, addr, 0xbf3003d5);
		return *op != -1;
	}
	if (!FUNC19 (str, "dsb ", 4)) {
		*op = FUNC9 (&ops, addr, 0x9f3003d5);
		return *op != -1;
	}
	if (!FUNC19 (str, "isb", 3)) {
		*op = FUNC9 (&ops, addr, 0xdf3f03d5);
		return *op != -1;
	}
	return false;
}