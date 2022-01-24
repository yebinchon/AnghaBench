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
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 

char *FUNC2(const char *name)
{
	char *p = FUNC1 (name, 0);
	while (p && p > name && !FUNC0 (p[-1]))
		--p;
	return p;
}