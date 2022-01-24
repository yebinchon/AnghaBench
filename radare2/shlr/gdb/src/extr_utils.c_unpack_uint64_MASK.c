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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

uint64_t FUNC1(char *buff, int len) {
	int nibble;
	uint64_t retval = 0;
	while (len) {
		nibble = FUNC0 (*buff++);
		retval |= nibble;
		len--;
		if (len) {
			retval = retval << 4;
		}
	}
	return retval;
}