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

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 char* FUNC1 (char*,char const*,size_t) ; 

char * FUNC2(char *dst, const char *src, size_t len)
{
	size_t n = FUNC0(src);
	if (n > len) {
		n = len;
	}
	return FUNC1(dst, src, len) + n;
}