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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC9 (char*,int*) ; 

bool
FUNC10(const char *loid_arg)
{
	int			status;
	Oid			loid = FUNC3(loid_arg);
	bool		own_transaction;

	if (!FUNC9("\\lo_unlink", &own_transaction))
		return false;

	FUNC2();
	status = FUNC6(pset.db, loid);
	FUNC1();

	if (status == -1)
	{
		FUNC7("%s", FUNC0(pset.db));
		return FUNC4("\\lo_unlink", own_transaction);
	}

	if (!FUNC5("\\lo_unlink", own_transaction))
		return false;

	FUNC8("lo_unlink %u", loid);

	return true;
}