#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * keyword; } ;
typedef  TYPE_1__ PQconninfoOption ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static PQconninfoOption *
FUNC1(PQconninfoOption *connOptions, const char *keyword)
{
	PQconninfoOption *option;

	for (option = connOptions; option->keyword != NULL; option++)
	{
		if (FUNC0(option->keyword, keyword) == 0)
			return option;
	}

	return NULL;
}