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
struct TYPE_4__ {int num_lwlocks; int /*<<< orphan*/  tranche_name; } ;
typedef  TYPE_1__ NamedLWLockTrancheRequest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IsUnderPostmaster ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ NAMEDATALEN ; 
 TYPE_1__* NamedLWLockTrancheRequestArray ; 
 int NamedLWLockTrancheRequests ; 
 int NamedLWLockTrancheRequestsAllocated ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  lock_named_request_allowed ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (char const*) ; 

void
FUNC5(const char *tranche_name, int num_lwlocks)
{
	NamedLWLockTrancheRequest *request;

	if (IsUnderPostmaster || !lock_named_request_allowed)
		return;					/* too late */

	if (NamedLWLockTrancheRequestArray == NULL)
	{
		NamedLWLockTrancheRequestsAllocated = 16;
		NamedLWLockTrancheRequestArray = (NamedLWLockTrancheRequest *)
			FUNC1(TopMemoryContext,
							   NamedLWLockTrancheRequestsAllocated
							   * sizeof(NamedLWLockTrancheRequest));
	}

	if (NamedLWLockTrancheRequests >= NamedLWLockTrancheRequestsAllocated)
	{
		int			i = NamedLWLockTrancheRequestsAllocated;

		while (i <= NamedLWLockTrancheRequests)
			i *= 2;

		NamedLWLockTrancheRequestArray = (NamedLWLockTrancheRequest *)
			FUNC3(NamedLWLockTrancheRequestArray,
					 i * sizeof(NamedLWLockTrancheRequest));
		NamedLWLockTrancheRequestsAllocated = i;
	}

	request = &NamedLWLockTrancheRequestArray[NamedLWLockTrancheRequests];
	FUNC0(FUNC4(tranche_name) + 1 < NAMEDATALEN);
	FUNC2(request->tranche_name, tranche_name, NAMEDATALEN);
	request->num_lwlocks = num_lwlocks;
	NamedLWLockTrancheRequests++;
}