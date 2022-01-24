#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * insn; int /*<<< orphan*/  syntax; } ;
typedef  TYPE_1__ tms320_dasm_t ;
typedef  int /*<<< orphan*/  insn_item_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_cr ; 
 int /*<<< orphan*/  q_lr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static insn_item_t * FUNC3(tms320_dasm_t * dasm)
{
	// remove odd spaces

	FUNC2(dasm->syntax, "  ", "%s", " ");

	// add some qualifiers

	if (FUNC0 (dasm, q_lr)) {
		FUNC1 (dasm->syntax, " ", ".lr ");
	}
	if (FUNC0 (dasm, q_cr)) {
		FUNC1 (dasm->syntax, " ", ".cr ");
	}

	return dasm->insn;
}