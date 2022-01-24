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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const char *s1, int len1,
					 const char *s2, int len2)
{
	int			cmp;

	cmp = FUNC1(s1, s2, FUNC0(len1, len2));

	if (cmp != 0)
		return cmp;

	if (len1 == len2)
		return 0;

	return len1 < len2 ? -1 : 1;
}