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
struct interface_info {TYPE_1__* client; } ;
struct client_lease {struct client_lease* next; } ;
struct TYPE_2__ {struct client_lease* active; struct client_lease* leases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ leaseFile ; 
 int /*<<< orphan*/  path_dhclient_db ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct interface_info*,struct client_lease*,int) ; 

void
FUNC5(struct interface_info *ifi)
{
	struct client_lease *lp;

	if (!leaseFile) {
		leaseFile = FUNC2(path_dhclient_db, "w");
		if (!leaseFile)
			FUNC0("can't create %s", path_dhclient_db);
	} else {
		FUNC1(leaseFile);
		FUNC3(leaseFile);
	}

	for (lp = ifi->client->leases; lp; lp = lp->next)
		FUNC4(ifi, lp, 1);
	if (ifi->client->active)
		FUNC4(ifi, ifi->client->active, 1);

	FUNC1(leaseFile);
}