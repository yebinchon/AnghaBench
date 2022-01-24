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
 scalar_t__ FUNC0 (unsigned char const) ; 
 scalar_t__ FUNC1 (unsigned char const) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 
 scalar_t__ FUNC3 (unsigned char const) ; 

__attribute__((used)) static int
FUNC4(const unsigned char *s)
{
	int			len;

	/*
	 * Note: it's not really appropriate to assume that all multibyte charsets
	 * are double-wide on screen.  But this seems an okay approximation for
	 * the MULE charsets we currently support.
	 */

	if (FUNC0(*s))
		len = 1;
	else if (FUNC2(*s))
		len = 1;
	else if (FUNC1(*s))
		len = 2;
	else if (FUNC3(*s))
		len = 2;
	else
		len = 1;				/* assume ASCII */

	return len;
}