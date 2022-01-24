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
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int) ; 
 int FUNC1 (unsigned char const*) ; 

__attribute__((used)) static int
FUNC2(const unsigned char *s, int len)
{
	int			l = FUNC1(s);

	if (len < l)
		return -1;

	if (!FUNC0(s, l))
		return -1;

	return l;
}