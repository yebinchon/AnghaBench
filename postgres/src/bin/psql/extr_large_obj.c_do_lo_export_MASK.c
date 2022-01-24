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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC9 (char*,int*) ; 

bool
FUNC10(const char *loid_arg, const char *filename_arg)
{
	int			status;
	bool		own_transaction;

	if (!FUNC9("\\lo_export", &own_transaction))
		return false;

	FUNC2();
	status = FUNC6(pset.db, FUNC3(loid_arg), filename_arg);
	FUNC1();

	/* of course this status is documented nowhere :( */
	if (status != 1)
	{
		FUNC7("%s", FUNC0(pset.db));
		return FUNC4("\\lo_export", own_transaction);
	}

	if (!FUNC5("\\lo_export", own_transaction))
		return false;

	FUNC8("lo_export");

	return true;
}