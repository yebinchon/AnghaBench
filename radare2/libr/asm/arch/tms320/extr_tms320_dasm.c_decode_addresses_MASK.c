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
 int /*<<< orphan*/  L16 ; 
 int /*<<< orphan*/  L7 ; 
 int /*<<< orphan*/  L8 ; 
 int /*<<< orphan*/  P24 ; 
 int /*<<< orphan*/  P8 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l1 ; 
 int /*<<< orphan*/  l16 ; 
 int /*<<< orphan*/  l3 ; 
 int /*<<< orphan*/  l7 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 

void FUNC5(tms320_dasm_t * dasm)
{
	// program address label

	if (FUNC2 (dasm, L7)) {
		FUNC4 (dasm->syntax, "L7", "0x%02X", FUNC3 (dasm, L7));
	}
	if (FUNC2 (dasm, L8)) {
		FUNC4 (dasm->syntax, "L8", "0x%02X", FUNC3 (dasm, L8));
	}
	if (FUNC2 (dasm, L16)) {
		FUNC4 (dasm->syntax, "L16", "0x%04X", FUNC0 (FUNC3 (dasm, L16)));
	}

	// program address label

	if (FUNC2 (dasm, l1) && FUNC2 (dasm, l3)) {
		FUNC4 (dasm->syntax, "l4", "0x%01X", (FUNC3 (dasm, l3) << 1) | FUNC3 (dasm, l1));
	}

	// program memory address

	if (FUNC2 (dasm, l7)) {
		FUNC4 (dasm->syntax, "pmad", "0x%02X", FUNC3 (dasm, l7));
	}
	if (FUNC2 (dasm, l16)) {
		FUNC4 (dasm->syntax, "pmad", "0x%04X", FUNC0 (FUNC3 (dasm, l16)));
	}

	// program or dasm address label

	if (FUNC2 (dasm, P8)) {
		FUNC4 (dasm->syntax, "P8", "0x%02X", FUNC3 (dasm, P8));
	}
	if (FUNC2 (dasm, P24)) {
		FUNC4 (dasm->syntax, "P24", "0x%06X", FUNC1 (FUNC3 (dasm, P24)));
	}
}