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
typedef  scalar_t__ ut8 ;

/* Variables and functions */
 scalar_t__ A_BIT ; 
 scalar_t__ A_DIRECT ; 
 char** _8051_regs ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static char* FUNC3(char* disasm, ut8 arg, ut8 val) {
	char key[10];
	char subst[10];
	if (arg == A_DIRECT) {
		if (_8051_regs[val]) {
			FUNC2 (key, " 0x%02x", val);
			FUNC2 (subst, " %s", _8051_regs[val]);
			disasm = FUNC1 (disasm, key, subst, 0);
		}
	} else if (arg == A_BIT) {
		val = FUNC0 (val);
		if (_8051_regs[val]) {
			FUNC2 (key, "0x%02x.", val);
			FUNC2 (subst, "%s.", _8051_regs[val]);
			disasm = FUNC1 (disasm, key, subst, 0);
		}
	}
	return disasm;
}