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
struct TYPE_2__ {int /*<<< orphan*/  verbosity; scalar_t__ db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PQERRORS_DEFAULT ; 
 int /*<<< orphan*/  PQERRORS_SQLSTATE ; 
 int /*<<< orphan*/  PQERRORS_TERSE ; 
 int /*<<< orphan*/  PQERRORS_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 TYPE_1__ pset ; 

__attribute__((used)) static bool
FUNC4(const char *newval)
{
	FUNC0(newval != NULL);		/* else substitute hook messed up */
	if (FUNC3(newval, "default") == 0)
		pset.verbosity = PQERRORS_DEFAULT;
	else if (FUNC3(newval, "verbose") == 0)
		pset.verbosity = PQERRORS_VERBOSE;
	else if (FUNC3(newval, "terse") == 0)
		pset.verbosity = PQERRORS_TERSE;
	else if (FUNC3(newval, "sqlstate") == 0)
		pset.verbosity = PQERRORS_SQLSTATE;
	else
	{
		FUNC2("VERBOSITY", newval, "default, verbose, terse, sqlstate");
		return false;
	}

	if (pset.db)
		FUNC1(pset.db, pset.verbosity);
	return true;
}