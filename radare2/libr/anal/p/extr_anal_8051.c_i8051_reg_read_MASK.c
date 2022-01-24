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
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  RRegItem ;
typedef  int /*<<< orphan*/  RReg ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ut32 FUNC2 (RReg *reg, const char *regname) {
	if (reg) {
		RRegItem *item = FUNC0 (reg, regname, R_REG_TYPE_GPR);
		if (item) {
			return FUNC1 (reg, item);
		}
	}
	return 0;
}