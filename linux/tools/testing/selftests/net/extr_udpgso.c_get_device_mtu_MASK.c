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
struct ifreq {unsigned int ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIFMTU ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static unsigned int FUNC4(int fd, const char *ifname)
{
	struct ifreq ifr;

	FUNC2(&ifr, 0, sizeof(ifr));

	FUNC3(ifr.ifr_name, ifname);

	if (FUNC1(fd, SIOCGIFMTU, &ifr))
		FUNC0(1, errno, "ioctl get mtu");

	return ifr.ifr_mtu;
}