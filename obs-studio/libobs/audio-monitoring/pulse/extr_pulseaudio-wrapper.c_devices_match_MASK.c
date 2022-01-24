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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

bool FUNC3(const char *id1, const char *id2)
{
	bool match;
	char *name1 = NULL;
	char *name2 = NULL;

	if (!id1 || !id2)
		return false;

	if (FUNC2(id1, "default") == 0) {
		FUNC1(&name1);
		id1 = name1;
	}
	if (FUNC2(id2, "default") == 0) {
		FUNC1(&name2);
		id2 = name2;
	}

	match = FUNC2(id1, id2) == 0;
	FUNC0(name1);
	FUNC0(name2);
	return match;
}