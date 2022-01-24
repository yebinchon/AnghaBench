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
 scalar_t__ cfg_do_ipv4 ; 
 scalar_t__ cfg_do_ipv6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(int argc, char **argv)
{
	FUNC1(argc, argv);

	if (cfg_do_ipv4)
		FUNC2();
	if (cfg_do_ipv6)
		FUNC3();

	FUNC0(stderr, "OK\n");
	return 0;
}