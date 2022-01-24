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
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static const char *FUNC2(RReg *reg, char **tok, const int n) {
	if (n == 2) {
		int role = FUNC0 (tok[0] + 1);
		return FUNC1 (reg, role, tok[1])
			? NULL
			: "Invalid alias";
	}
	return "Invalid syntax";
}