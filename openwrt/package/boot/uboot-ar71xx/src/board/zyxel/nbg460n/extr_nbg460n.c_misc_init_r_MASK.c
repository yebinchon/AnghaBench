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
typedef  int uint8_t ;

/* Variables and functions */
 scalar_t__ CONFIG_ETHADDR_ADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

int FUNC4(void) {
    uint8_t macaddr[6];
    uint8_t enetaddr[6];

	FUNC0("Testing mac addresses\n");
	
    FUNC3(macaddr, (uint8_t *) CONFIG_ETHADDR_ADDR, 6);

    if (!FUNC1("ethaddr", enetaddr)) {
        FUNC0("Setting eth0 mac addr to %pM\n", macaddr);
        FUNC2("ethaddr", macaddr);
    }

    if (!FUNC1("eth1addr", enetaddr)) {
		macaddr[5] += 1;
        FUNC0("Setting eth1 mac addr to %pM\n", macaddr);
        FUNC2("eth1addr", macaddr);
    }

    return 0;
}