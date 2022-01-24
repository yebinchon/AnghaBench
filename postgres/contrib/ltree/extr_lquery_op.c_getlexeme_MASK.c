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
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char) ; 

__attribute__((used)) static char *
FUNC2(char *start, char *end, int *len)
{
	char	   *ptr;
	int			charlen;

	while (start < end && (charlen = FUNC0(start)) == 1 && FUNC1(start, '_'))
		start += charlen;

	ptr = start;
	if (ptr >= end)
		return NULL;

	while (ptr < end && !((charlen = FUNC0(ptr)) == 1 && FUNC1(ptr, '_')))
		ptr += charlen;

	*len = ptr - start;
	return start;
}