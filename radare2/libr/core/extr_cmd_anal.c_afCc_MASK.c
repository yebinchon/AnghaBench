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
typedef  long long ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_3__ {long long offset; int /*<<< orphan*/  anal; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 long long FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC6(RCore *core, const char *input) {
	ut64 addr;
	RAnalFunction *fcn;
	if (*input == ' ') {
		addr = FUNC5 (core->num, input);
	} else {
		addr = core->offset;
	}
	if (addr == 0LL) {
		fcn = FUNC2 (core->anal, input + 3);
	} else {
		fcn = FUNC3 (core->anal, addr, R_ANAL_FCN_TYPE_NULL);
	}
	if (fcn) {
		ut32 totalCycles = FUNC1 (core->anal, fcn);
		// FIXME: This defeats the purpose of the function, but afC is used in project files.
		// cf. canal.c
		FUNC4 ("%d\n", totalCycles);
	} else {
		FUNC0 ("afCc: Cannot find function\n");
	}
}