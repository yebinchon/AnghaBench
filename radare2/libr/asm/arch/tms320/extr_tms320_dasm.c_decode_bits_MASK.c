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
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  U ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  u ; 

void FUNC3(tms320_dasm_t * dasm)
{
	// rounding
	if (FUNC0 (dasm, R)) {
		FUNC2 (dasm->syntax, "[r]", "%s", FUNC1 (dasm, R) ? "r" : "");
	}

	// unsigned
	if (FUNC0 (dasm, u)) {
		FUNC2 (dasm->syntax, "[u]", "%s", FUNC1 (dasm, u) ? "u" : "");
	}

	// 40 keyword
	if (FUNC0 (dasm, g)) {
		FUNC2 (dasm->syntax, "[40]", "%s", FUNC1 (dasm, g) ? "40" : "");
	}

	// T3 update
	if (FUNC0 (dasm, U)) {
		FUNC2 (dasm->syntax, "[T3 = ]", "%s", FUNC1 (dasm, U) ? "t3=" : "");
	}
}