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
typedef  int /*<<< orphan*/  RReg ;

/* Variables and functions */
 int R_REG_NAME_PC ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(RReg *reg, char *s, bool x86) {
	int i;
	for (i = 0; i < 64; i++) {
		const char *k = FUNC0 (reg, i);
		if (!k || i == R_REG_NAME_PC) {
			continue;
		}
		const char *v = FUNC1 (i);
		if (!v) {
			break;
		}
		if (x86 && *k == 'r') {
			FUNC2 (s, k, v);
			char *reg32 = FUNC3 (k);
			*reg32 = 'e';
			FUNC2 (s, reg32, v);
		} else {
			FUNC2 (s, k, v);
		}
	}
}