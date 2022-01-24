#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_12__ {TYPE_1__* Reil; } ;
struct TYPE_11__ {int /*<<< orphan*/  cur; int /*<<< orphan*/  old; } ;
typedef  int /*<<< orphan*/  RAnalReilArg ;
typedef  TYPE_2__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(RAnalEsil *esil, ut8 bit) {
	RAnalReilArg *op1;

	FUNC2(esil, bit);
	FUNC2(esil, 0x3f);
	FUNC3(esil);
	// Generate the mask. 2 << bits - 1
	FUNC4(esil);
	op1 = FUNC5(esil);
	// old & mask
	FUNC1(esil, esil->Reil->old);
	FUNC6(esil, op1);
	FUNC3(esil);
	// cur & mask
	FUNC1(esil, esil->Reil->cur);
	FUNC6(esil, op1);
	FUNC3(esil);
	// Check
	FUNC7(esil);

	FUNC0 (op1);
}