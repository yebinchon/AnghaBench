#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  syntax; } ;
typedef  TYPE_1__ tms320_dasm_t ;

/* Variables and functions */
 int /*<<< orphan*/  D16 ; 
 int /*<<< orphan*/  K16 ; 
 int /*<<< orphan*/  K8 ; 
 int /*<<< orphan*/  SHFT ; 
 int /*<<< orphan*/  SHIFTW ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  k12 ; 
 int /*<<< orphan*/  k16 ; 
 int /*<<< orphan*/  k3 ; 
 int /*<<< orphan*/  k4 ; 
 int /*<<< orphan*/  k5 ; 
 int /*<<< orphan*/  k8 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 

void FUNC4(tms320_dasm_t * dasm)
{
	// signed constant

	if (FUNC1 (dasm, K8)) {
		FUNC3 (dasm->syntax, "K8", "0x%02X", FUNC2 (dasm, K8));
	}
	if (FUNC1 (dasm, K16)) {
		FUNC3 (dasm->syntax, "K16", "0x%04X", FUNC0 (FUNC2 (dasm, K16)));
	}

	// unsigned constant

	if (FUNC1 (dasm, k4)) {
		FUNC3 (dasm->syntax, "K4", "0x%01X", FUNC2 (dasm, k4));
	}
	if (FUNC1 (dasm, k5)) {
		FUNC3 (dasm->syntax, "k5", "0x%02X", FUNC2 (dasm, k5));
	}
	if (FUNC1 (dasm, k8)) {
		FUNC3 (dasm->syntax, "k8", "0x%02X", FUNC2 (dasm, k8));
	}

	if (FUNC1 (dasm, k12)) {
		FUNC3 (dasm->syntax, "k12", "0x%03X", FUNC0 (FUNC2 (dasm, k12)));
	}
	if (FUNC1 (dasm, k16)) {
		FUNC3 (dasm->syntax, "k16", "0x%04X", FUNC0 (FUNC2 (dasm, k16)));
	}

	if (FUNC1 (dasm, k4) && FUNC1 (dasm, k3)) {
		FUNC3 (dasm->syntax, "k7", "0x%02X", (FUNC2 (dasm, k3) << 4) | FUNC2 (dasm, k4));
	}
	if (FUNC1 (dasm, k4) && FUNC1 (dasm, k5)) {
		FUNC3 (dasm->syntax, "k9", "0x%03X", (FUNC2 (dasm, k5) << 4) | FUNC2 (dasm, k4));
	}
	if (FUNC1 (dasm, k4) && FUNC1 (dasm, k8)) {
		FUNC3 (dasm->syntax, "k12", "0x%03X", (FUNC2 (dasm, k8) << 4) | FUNC2 (dasm, k4));
	}

	// dasm address label

	if (FUNC1 (dasm, D16)) {
		FUNC3 (dasm->syntax, "D16", "0x%04X", FUNC0 (FUNC2 (dasm, D16)));
	}

	// immediate shift value

	if (FUNC1 (dasm, SHFT)) {
		FUNC3 (dasm->syntax, "#SHFT", "0x%01X", FUNC2 (dasm, SHFT));
	}
	if (FUNC1 (dasm, SHIFTW)) {
		FUNC3 (dasm->syntax, "#SHIFTW", "0x%02X", FUNC2 (dasm, SHIFTW));
	}
}