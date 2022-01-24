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
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STRING_FUNC_HELP ; 
 int /*<<< orphan*/  STRING_INVALID_KEY ; 
 int /*<<< orphan*/  STRING_INVALID_SYNTAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(int argc, WCHAR *argv[])
{
    HKEY root, hkey;
    WCHAR *path, *long_key;
    BOOL overwrite_file = FALSE;
    HANDLE hFile;
    int ret;

    if (argc == 3 || argc > 5)
        goto error;

    if (!FUNC9(argv[2], &root, &path, &long_key))
        return 1;

    if (argc == 5 && !(overwrite_file = FUNC7(argv[4])))
        goto error;

    if (FUNC2(root, path, 0, KEY_READ, &hkey))
    {
        FUNC8(STRING_INVALID_KEY);
        return 1;
    }

    hFile = FUNC6(argv[3], overwrite_file);
    FUNC3(hFile);
    ret = FUNC5(hFile, hkey, long_key);
    FUNC4(hFile);
    FUNC0(hFile);

    FUNC1(hkey);

    return ret;

error:
    FUNC8(STRING_INVALID_SYNTAX);
    FUNC8(STRING_FUNC_HELP, FUNC10(argv[1]));
    return 1;
}