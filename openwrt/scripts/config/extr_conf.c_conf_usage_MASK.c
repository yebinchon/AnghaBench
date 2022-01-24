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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const char *progname)
{

	FUNC0("Usage: %s [-s] [option] <kconfig-file>\n", progname);
	FUNC0("[option] is _one_ of the following:\n");
	FUNC0("  --listnewconfig         List new options\n");
	FUNC0("  --oldaskconfig          Start a new configuration using a line-oriented program\n");
	FUNC0("  --oldconfig             Update a configuration using a provided .config as base\n");
	FUNC0("  --silentoldconfig       Same as oldconfig, but quietly, additionally update deps\n");
	FUNC0("  --olddefconfig          Same as silentoldconfig but sets new symbols to their default value\n");
	FUNC0("  --oldnoconfig           An alias of olddefconfig\n");
	FUNC0("  --defconfig <file>      New config with default defined in <file>\n");
	FUNC0("  --savedefconfig <file>  Save the minimal current configuration to <file>\n");
	FUNC0("  --allnoconfig           New config where all options are answered with no\n");
	FUNC0("  --allyesconfig          New config where all options are answered with yes\n");
	FUNC0("  --allmodconfig          New config where all options are answered with mod\n");
	FUNC0("  --alldefconfig          New config with all symbols set to default\n");
	FUNC0("  --randconfig            New config with random answer to all options\n");
}