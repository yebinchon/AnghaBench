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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

__attribute__((used)) static inline bool FUNC3(const char *path)
{
	struct stat stat_info;
	if (FUNC2(path, &stat_info) == 0)
		return !!FUNC0(stat_info.st_mode);

	FUNC1(LOG_DEBUG, "is_dir: stat for %s failed, errno: %d", path, errno);
	return false;
}