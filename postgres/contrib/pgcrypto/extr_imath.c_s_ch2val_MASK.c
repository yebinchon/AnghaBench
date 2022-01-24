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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 char FUNC2 (unsigned char) ; 

__attribute__((used)) static int
FUNC3(char c, int r)
{
	int			out;

	/*
	 * In some locales, isalpha() accepts characters outside the range A-Z,
	 * producing out<0 or out>=36.  The "out >= r" check will always catch
	 * out>=36.  Though nothing explicitly catches out<0, our caller reacts
	 * the same way to every negative return value.
	 */
	if (FUNC1((unsigned char) c))
		out = c - '0';
	else if (r > 10 && FUNC0((unsigned char) c))
		out = FUNC2((unsigned char) c) - 'A' + 10;
	else
		return -1;

	return (out >= r) ? -1 : out;
}