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
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 char* FUNC1 (int,void*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(int family, int ifindex, void *saddr, void *daddr)
{
	char sa[INET6_ADDRSTRLEN], da[INET6_ADDRSTRLEN];

	FUNC0(stderr, "         pktinfo: ifindex=%u src=%s dst=%s\n",
		ifindex,
		saddr ? FUNC1(family, saddr, sa, sizeof(sa)) : "unknown",
		daddr ? FUNC1(family, daddr, da, sizeof(da)) : "unknown");
}