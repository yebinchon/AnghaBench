#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pset ; 

const char *
FUNC2(void)
{
	const char *val;

	if (!pset.db)
		return NULL;

	val = FUNC0(pset.db, "session_authorization");
	if (val)
		return val;
	else
		return FUNC1(pset.db);
}