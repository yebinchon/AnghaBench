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
typedef  int ut64 ;

/* Variables and functions */
 int FUNC0 (char const) ; 

int FUNC1(const char *src, ut64 len, char *dst) {
	int i = 0;
	while (i < (len / 2)) {
		int val = FUNC0 (src[(i * 2)]);
		val <<= 4;
		val |= FUNC0 (src[(i * 2) + 1]);
		dst[i++] = val;
	}
	dst[i] = '\0';
	return len;
}