#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(RAnalOp *op, char *mem, char ireg, int use_ramp, int prepostdec, int offset, int st) {
	if (ireg) {
		// preincrement index register
		if (prepostdec < 0) {
			FUNC0 ("1,%c,-,%c,=,", ireg, ireg);
		}
		// set register index address
		FUNC0 ("%c,", ireg);
		// add offset
		if (offset != 0) {
			FUNC0 ("%d,+,", offset);
		}
	} else {
		FUNC0 ("%d,", offset);
	}
	if (use_ramp) {
		FUNC0 ("16,ramp%c,<<,+,", ireg ? ireg : 'd');
	}
	// set SRAM base address
	FUNC0 ("_%s,+,", mem);
	// read/write from SRAM
	FUNC0 ("%s[1],", st ? "=" : "");
	// postincrement index register
	if (ireg && prepostdec > 0) {
		FUNC0 ("1,%c,+,%c,=,", ireg, ireg);
	}
}