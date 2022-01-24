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
typedef  scalar_t__ zend_long ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char**,int) ; 

__attribute__((used)) inline static int
FUNC2(char **buffer, size_t *len)
{
	char *endptr;
	register zend_long num = FUNC1(*buffer, &endptr, 10);
	register size_t i;

	if (endptr != NULL) {
		i = (endptr - *buffer);
		*len -= i;
		*buffer = endptr;
	}
	FUNC0(("sprintf_getnumber: number was %d bytes long\n", i));

	if (num >= INT_MAX || num < 0) {
		return -1;
	} else {
		return (int) num;
	}
}