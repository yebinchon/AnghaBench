#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  syntax; TYPE_2__* insn; TYPE_1__* head; int /*<<< orphan*/  length; } ;
typedef  TYPE_3__ tms320_dasm_t ;
typedef  int /*<<< orphan*/  insn_item_t ;
struct TYPE_19__ {int /*<<< orphan*/  syntax; } ;
struct TYPE_18__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  E ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

insn_item_t * FUNC14(tms320_dasm_t * dasm)
{
	dasm->length = dasm->head->size;

	FUNC13(dasm->syntax, sizeof(dasm->syntax), \
		 FUNC10(dasm, E) && FUNC11(dasm, E) ? "|| %s" : "%s", dasm->insn->syntax);

	FUNC2(dasm);
	FUNC3(dasm);
	FUNC6(dasm);

	FUNC5(dasm);
	FUNC0(dasm);

	FUNC9(dasm);
	FUNC8(dasm);
	FUNC4(dasm);

	FUNC7(dasm);
	FUNC1(dasm);

	return FUNC12(dasm);

}