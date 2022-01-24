#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* insn; } ;
typedef  TYPE_1__ tms320_dasm_t ;
typedef  int /*<<< orphan*/  insn_item_t ;
struct TYPE_8__ {struct TYPE_8__* i_list; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

insn_item_t * FUNC4(tms320_dasm_t * dasm)
{
	FUNC2(dasm);

	if (dasm->insn->i_list) {
		dasm->insn = dasm->insn->i_list;
		while (!FUNC1(dasm->insn)) {
			if (FUNC3 (dasm) && FUNC2 (dasm)) {
				break;
			}
			dasm->insn++;
		}
	}

	if (!FUNC1 (dasm->insn)) {
		return FUNC0 (dasm);
	}

	return NULL;
}