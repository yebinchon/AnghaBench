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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(const char *src, const char *dst,
		 const char *schemaName, const char *relName)
{
	if (FUNC1(src, dst) < 0)
		FUNC0("error while creating link for relation \"%s.%s\" (\"%s\" to \"%s\"): %s\n",
				 schemaName, relName, src, dst, FUNC2(errno));
}