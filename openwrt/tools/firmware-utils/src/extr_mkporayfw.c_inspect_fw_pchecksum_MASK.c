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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static inline void FUNC1(char *label,
					uint16_t val, uint16_t expval)
{
	FUNC0("%-23s: 0x%04x     ", label, val);
	if (val == expval) {
		FUNC0("(ok)\n");
	} else {
		FUNC0("(expected: 0x%04x)\n", expval);
	}
}