#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  oldowner; int /*<<< orphan*/  oldcontext; } ;
typedef  TYPE_1__ PLySubtransactionData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ explicit_subtransactions ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(int save_subxact_level)
{
	FUNC0(save_subxact_level >= 0);

	while (FUNC7(explicit_subtransactions) > save_subxact_level)
	{
		PLySubtransactionData *subtransactiondata;

		FUNC0(explicit_subtransactions != NIL);

		FUNC3(WARNING,
				(FUNC4("forcibly aborting a subtransaction that has not been exited")));

		FUNC2();

		subtransactiondata = (PLySubtransactionData *) FUNC5(explicit_subtransactions);
		explicit_subtransactions = FUNC6(explicit_subtransactions);

		FUNC1(subtransactiondata->oldcontext);
		CurrentResourceOwner = subtransactiondata->oldowner;
		FUNC8(subtransactiondata);
	}
}