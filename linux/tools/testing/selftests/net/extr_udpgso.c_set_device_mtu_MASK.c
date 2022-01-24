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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cfg_ifname ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(int fd, int mtu)
{
	int val;

	val = FUNC3(fd, cfg_ifname);
	FUNC2(stderr, "device mtu (orig): %u\n", val);

	FUNC0(fd, cfg_ifname, mtu);
	val = FUNC3(fd, cfg_ifname);
	if (val != mtu)
		FUNC1(1, 0, "unable to set device mtu to %u\n", val);

	FUNC2(stderr, "device mtu (test): %u\n", val);
}