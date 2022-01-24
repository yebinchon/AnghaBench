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
struct win_version_info {int /*<<< orphan*/  revis; int /*<<< orphan*/  build; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct win_version_info*) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	struct win_version_info ver;
	FUNC1(&ver);

	bool b64 = FUNC2();
	const char *windows_bitness = b64 ? "64" : "32";

	FUNC0(LOG_INFO, "Windows Version: %d.%d Build %d (revision: %d; %s-bit)",
	     ver.major, ver.minor, ver.build, ver.revis, windows_bitness);
}