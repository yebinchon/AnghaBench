#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* Reil; } ;
struct TYPE_12__ {int /*<<< orphan*/  cur; } ;
typedef  int /*<<< orphan*/  RAnalReilArg ;
typedef  TYPE_2__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(RAnalEsil *esil) {
	// Generation of parity flag taken from openreil README example.
	RAnalReilArg *op;
	FUNC1(esil, esil->Reil->cur);
	FUNC2(esil, 0xff);
	FUNC3(esil);
	op = FUNC6(esil);
	if (!op) {
		return;
	}

	FUNC2(esil, 7);
	FUNC7(esil, op);
	FUNC4(esil);
	FUNC2(esil, 6);
	FUNC7(esil, op);
	FUNC4(esil);
	FUNC8(esil);
	FUNC2(esil, 5);
	FUNC7(esil, op);
	FUNC4(esil);
	FUNC2(esil, 4);
	FUNC7(esil, op);
	FUNC4(esil);
	FUNC8(esil);
	FUNC8(esil);
	FUNC2(esil, 3);
	FUNC7(esil, op);
	FUNC4(esil);
	FUNC2(esil, 2);
	FUNC7(esil, op);
	FUNC4(esil);
	FUNC8(esil);
	FUNC2(esil, 1);
	FUNC7(esil, op);
	FUNC4(esil);
	FUNC7(esil, op);
	FUNC8(esil);
	FUNC8(esil);
	FUNC8(esil);
	FUNC2(esil, 1);
	FUNC3(esil);
	FUNC5(esil);

	FUNC0 (op);
}