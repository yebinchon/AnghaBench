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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int INT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static INT
FUNC8(LPTSTR extension)
{
    DWORD return_val;
    HKEY hKey = NULL, hInsideKey = NULL;

    DWORD fileTypeLength = 0;
    LPTSTR fileType = NULL;

    return_val = FUNC2(HKEY_LOCAL_MACHINE, FUNC5("SOFTWARE\\Classes"), 0, KEY_READ, &hKey);

    if (return_val != ERROR_SUCCESS)
        return -1;

    return_val = FUNC2(hKey, extension, 0, KEY_READ, &hInsideKey);
    FUNC1(hKey);

    if (return_val != ERROR_SUCCESS)
        return 0;

    /* obtain string length */
    return_val = FUNC3(hInsideKey, NULL, NULL, NULL, NULL, &fileTypeLength);

    if (return_val == ERROR_FILE_NOT_FOUND) /* no default value, don't display */
    {
        FUNC1(hInsideKey);
        return 0;
    }

    if (return_val != ERROR_SUCCESS)
    {
        FUNC1(hInsideKey);
        return -2;
    }

    fileType = FUNC6(fileTypeLength * sizeof(TCHAR));
    if (!fileType)
    {
        FUNC4("Cannot allocate memory for fileType!\n");
        FUNC1(hInsideKey);
        return -2;
    }

    /* obtain actual file type */
    return_val = FUNC3(hInsideKey, NULL, NULL, NULL, (LPBYTE)fileType, &fileTypeLength);
    FUNC1(hInsideKey);

    if (return_val != ERROR_SUCCESS)
    {
        FUNC7(fileType);
        return -2;
    }

    if (fileTypeLength != 0)    /* if there is a default key, display relevant information */
    {
        FUNC0(FUNC5("%s=%s\n"), extension, fileType);
    }

    FUNC7(fileType);
    return 1;
}