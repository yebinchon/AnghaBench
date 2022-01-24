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
struct update_info {int /*<<< orphan*/  local_package; int /*<<< orphan*/  cache_package; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct update_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct update_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_files_to_local ; 

__attribute__((used)) static int FUNC5(struct update_info *info)
{
	int local_version;
	int cache_version = 0;

	local_version = (int)FUNC3(info->local_package, "version");
	cache_version = (int)FUNC3(info->cache_package, "version");

	/* if local cached version is out of date, copy new version */
	if (cache_version < local_version) {
		FUNC1(info->local_package, update_files_to_local, info);
		FUNC0(info, "package.json");

		FUNC4(info->cache_package);
		FUNC2(info->local_package);
		info->cache_package = info->local_package;

		return local_version;
	}

	return cache_version;
}