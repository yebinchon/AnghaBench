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
struct TYPE_2__ {int /*<<< orphan*/  show_context; scalar_t__ db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PQSHOW_CONTEXT_ALWAYS ; 
 int /*<<< orphan*/  PQSHOW_CONTEXT_ERRORS ; 
 int /*<<< orphan*/  PQSHOW_CONTEXT_NEVER ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 TYPE_1__ pset ; 

__attribute__((used)) static bool
FUNC4(const char *newval)
{
	FUNC0(newval != NULL);		/* else substitute hook messed up */
	if (FUNC3(newval, "never") == 0)
		pset.show_context = PQSHOW_CONTEXT_NEVER;
	else if (FUNC3(newval, "errors") == 0)
		pset.show_context = PQSHOW_CONTEXT_ERRORS;
	else if (FUNC3(newval, "always") == 0)
		pset.show_context = PQSHOW_CONTEXT_ALWAYS;
	else
	{
		FUNC2("SHOW_CONTEXT", newval, "never, errors, always");
		return false;
	}

	if (pset.db)
		FUNC1(pset.db, pset.show_context);
	return true;
}