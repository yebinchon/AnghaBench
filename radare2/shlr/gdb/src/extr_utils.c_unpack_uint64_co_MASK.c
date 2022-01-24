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
 int FUNC0 (char*,int) ; 

uint64_t FUNC1(char *buff, int len) {
	uint64_t result = 0;
	int i;
	for (i = len - 2; i >= 0; i -= 2) {
		result |= FUNC0 (&buff[i], 2);
		if (i) {
			result <<= 8;
		}
	}
	return result;
}