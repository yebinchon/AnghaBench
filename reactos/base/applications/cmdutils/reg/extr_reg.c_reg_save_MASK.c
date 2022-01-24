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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  REG_LATEST_FORMAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SE_BACKUP_NAME ; 
 int /*<<< orphan*/  STRING_FUNC_HELP ; 
 int /*<<< orphan*/  STRING_INVALID_KEY ; 
 int /*<<< orphan*/  STRING_INVALID_SYNTAX ; 
 int /*<<< orphan*/  STRING_OVERWRITE_FILE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(int argc, WCHAR* argv[]) {
    HKEY root, hkey;
    LSTATUS status;
    WCHAR* path, *long_key;

    if (argc < 4 || argc > 5) goto error;

    if (!FUNC8(argv[2], &root, &path, &long_key))
        return 1;

    if (FUNC1(argv[3]) != INVALID_FILE_ATTRIBUTES)
    {
        if (argc == 5 && !FUNC10(argv[4], L"/y"))
        {
            FUNC0(argv[3]);
        }
        else
        {
            if (FUNC5(STRING_OVERWRITE_FILE, argv[3]))
                FUNC0(argv[3]);
        }
    }

    if (FUNC3(root, path, 0, KEY_READ, &hkey))
    {
        FUNC7(STRING_INVALID_KEY);
        return 1;
    }

    if (!FUNC9(SE_BACKUP_NAME, TRUE)) return 1; 

    status = FUNC4(hkey, argv[3], NULL, REG_LATEST_FORMAT);
    FUNC2(hkey);

    if (status != ERROR_SUCCESS) {
        FUNC6(status);
        return 1;
    }

    return 0;

error:
    FUNC7(STRING_INVALID_SYNTAX);
    FUNC7(STRING_FUNC_HELP, FUNC11(argv[1]));
    return 1;
}