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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SE_BACKUP_NAME ; 
 int /*<<< orphan*/  SE_RESTORE_NAME ; 
 int /*<<< orphan*/  STRING_FUNC_HELP ; 
 int /*<<< orphan*/  STRING_INVALID_KEY ; 
 int /*<<< orphan*/  STRING_INVALID_SYNTAX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(int argc, WCHAR* argv[])
{
    HKEY root, hkey;
    LSTATUS status;
    WCHAR* path, * long_key;

    if (argc != 4) goto error;

    if (!FUNC5(argv[2], &root, &path, &long_key))
        return 1;

    if (FUNC1(root, path, 0, KEY_READ, &hkey))
    {
        FUNC4(STRING_INVALID_KEY);
        return 1;
    }

    if (!FUNC6(SE_BACKUP_NAME, TRUE)) return 1;
    if (!FUNC6(SE_RESTORE_NAME, TRUE)) return 1;

    status = FUNC2(hkey, argv[3], 0);
    FUNC0(hkey);

    if (status != ERROR_SUCCESS) {
        FUNC3(status);
        return 1;
    }

    return 0;

error:
    FUNC4(STRING_INVALID_SYNTAX);
    FUNC4(STRING_FUNC_HELP, FUNC7(argv[1]));
    return 1;
}