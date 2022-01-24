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
struct netif_saddr_data {int /*<<< orphan*/  addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netif_saddr_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct netif_saddr_data*) ; 

void FUNC3(struct netif_saddr_data *ifaddrs)
{
	FUNC0(ifaddrs->addrs);

#ifdef _WIN32
	netif_get_addrs_win32(ifaddrs);
#else
	FUNC1(ifaddrs);
#endif
}