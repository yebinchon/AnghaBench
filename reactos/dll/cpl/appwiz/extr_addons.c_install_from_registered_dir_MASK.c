#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum install_res { ____Placeholder_install_res } install_res ;
struct TYPE_2__ {char* file_name; } ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int INSTALL_FAILED ; 
 scalar_t__ MAX_PATH ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  RRF_RT_ANY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* addon ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,scalar_t__) ; 
 int FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  mshtml_keyA ; 

__attribute__((used)) static enum install_res FUNC8(void)
{
    char *package_dir;
    DWORD res, type, size = MAX_PATH;
    enum install_res ret;

    package_dir = FUNC4(size + sizeof(addon->file_name));

    res = FUNC1(HKEY_CURRENT_USER, mshtml_keyA, "GeckoCabDir", RRF_RT_ANY, &type, (PBYTE)package_dir, &size);
    if(res == ERROR_MORE_DATA) {
        package_dir = FUNC6(package_dir, size + sizeof(addon->file_name));
        res = FUNC1(HKEY_CURRENT_USER, mshtml_keyA, "GeckoCabDir", RRF_RT_ANY, &type, (PBYTE)package_dir, &size);
    }

    if(res != ERROR_SUCCESS || (type != REG_SZ && type != REG_EXPAND_SZ)) {
        FUNC5(package_dir);
        return INSTALL_FAILED;
    }

    if (type == REG_EXPAND_SZ)
    {
        size = FUNC0(package_dir, NULL, 0);
        if (size)
        {
            char* buf = FUNC4(size + sizeof(addon->file_name));
            FUNC0(package_dir, buf, size);
            FUNC5(package_dir);
            package_dir = buf;
        }
    }

    FUNC2("Trying %s/%s\n", FUNC3(package_dir), FUNC3(addon->file_name));

    ret = FUNC7(package_dir, "", addon->file_name);

    FUNC5(package_dir);
    return ret;
}