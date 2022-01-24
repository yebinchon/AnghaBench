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
typedef  int /*<<< orphan*/  REgg ;

/* Variables and functions */
 scalar_t__ R_REG_AR_OFF ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static void FUNC2 (REgg *egg, char *out, int idx) {
	const char *reg = FUNC0 (egg, R_REG_AR_OFF + idx);

	if (reg) {
		FUNC1 (out, reg);
	}
}