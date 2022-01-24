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
typedef  int /*<<< orphan*/  win10_revision ;
struct win_version_info {int major; int revis; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  WINVER_REG_KEY ; 
 int /*<<< orphan*/  FUNC3 (char*,struct win_version_info*) ; 

void FUNC4(struct win_version_info *info)
{
	static struct win_version_info ver = {0};
	static bool got_version = false;

	if (!info)
		return;

	if (!got_version) {
		FUNC3(L"kernel32", &ver);
		got_version = true;

		if (ver.major == 10) {
			HKEY key;
			DWORD size, win10_revision;
			LSTATUS status;

			status = FUNC1(HKEY_LOCAL_MACHINE, WINVER_REG_KEY,
					     &key);
			if (status != ERROR_SUCCESS)
				return;

			size = sizeof(win10_revision);

			status = FUNC2(key, L"UBR", NULL, NULL,
						  (LPBYTE)&win10_revision,
						  &size);
			if (status == ERROR_SUCCESS)
				ver.revis = (int)win10_revision > ver.revis
						    ? (int)win10_revision
						    : ver.revis;

			FUNC0(key);
		}
	}

	*info = ver;
}