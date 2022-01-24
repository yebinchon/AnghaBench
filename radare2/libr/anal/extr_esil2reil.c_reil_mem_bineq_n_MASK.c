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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  RAnalReilOpcode ;
typedef  int /*<<< orphan*/  RAnalReilArg ;
typedef  int /*<<< orphan*/  RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(RAnalEsil *esil, RAnalReilOpcode opcode, ut8 size) {
	int ret = 1;
	RAnalReilArg *op2, *op1;

	op2 = FUNC5 (esil);
	if (!op2) {
		return false;
	}
	op1 = FUNC5 (esil);
	if (!op1) {
		FUNC0 (op2);
		return false;
	}

	FUNC6(esil, op2);
	ret &= FUNC3(esil, size);
	FUNC6(esil, op1);
	ret &= FUNC2(esil, opcode);
	FUNC6(esil, op2);
	ret &= FUNC4(esil, size);

	FUNC1 (op2);
	FUNC1 (op1);
	return ret;
}