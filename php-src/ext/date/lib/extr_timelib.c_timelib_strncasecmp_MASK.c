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
 size_t FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (char const*) ; 
 int FUNC2 (unsigned char) ; 

int FUNC3(const char *s1, const char *s2, size_t length)
{
	size_t len;
	size_t len1 = FUNC1(s1);
	size_t len2 = FUNC1(s2);
	int c1, c2;

	if (s1 == s2) {
		return 0;
	}
	len = FUNC0(length, FUNC0(len1, len2));
	while (len--) {
		c1 = FUNC2(*(unsigned char *)s1++);
		c2 = FUNC2(*(unsigned char *)s2++);
		if (c1 != c2) {
			return c1 - c2;
		}
	}

	return (int)(FUNC0(length, len1) - FUNC0(length, len2));
}