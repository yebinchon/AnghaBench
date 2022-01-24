#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
struct TYPE_9__ {scalar_t__ trap_code; int /*<<< orphan*/  trap; } ;
typedef  TYPE_1__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  R_ANAL_TRAP_DIVBYZERO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*,int*) ; 
 char* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static bool FUNC8(RAnalEsil *esil, int bits) {
	bool ret = false;
	ut64 s, d;
	char *dst = FUNC5 (esil);
	char *src0 = FUNC5 (esil);
	char *src1 = NULL;
	if (src0 && FUNC4 (esil, src0, &s)) {
		if (s == 0) {
			FUNC0 ("esil_mem_modeq4: Division by zero!");
			esil->trap = R_ANAL_TRAP_DIVBYZERO;
			esil->trap_code = 0;
		} else {
			FUNC6 (esil, dst);
			ret = (!!FUNC1 (esil, bits));
			src1 = FUNC5 (esil);
			if (src1 && FUNC4 (esil, src1, &d) && s >= 1) {
				FUNC7 (esil, d % s);
				d = d % s;
				FUNC7 (esil, d);
				FUNC6 (esil, dst);
				ret &= (!!FUNC2 (esil, bits));
			} else {
				ret = false;
			}
		}
	}
	if (!ret) {
		FUNC0 ("esil_mem_modeq_n: invalid parameters");
	}
	FUNC3 (dst);
	FUNC3 (src0);
	FUNC3 (src1);
	return ret;
}