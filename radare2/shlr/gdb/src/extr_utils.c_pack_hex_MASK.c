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
 char FUNC0 (char const) ; 

int FUNC1(const char *src, ut64 len, char *dst) {
	int i = 0;
	int x = 0;
	while (i < (len * 2)) {
		int val = (src[x] & 0xf0) >> 4;
		dst[i++] = FUNC0 (val);
		dst[i++] = FUNC0 (src[x++] & 0x0f);
	}
	dst[i] = '\0';
	return (len / 2);
}