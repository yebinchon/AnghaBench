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
typedef  int /*<<< orphan*/  RAnalReilArg ;
typedef  int /*<<< orphan*/  RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(RAnalEsil *esil) {
	RAnalReilArg *op2 = FUNC1(esil);
	if (!op2) {
		return false;
	}
	RAnalReilArg *op1 = FUNC1(esil);
	if (!op1) {
		FUNC0 (op2);
		return false;
	}
	FUNC2 (esil, op2);
	FUNC2 (esil, op1);
	FUNC3 (esil);
	FUNC0 (op1);
	FUNC0 (op2);
	return true;
}