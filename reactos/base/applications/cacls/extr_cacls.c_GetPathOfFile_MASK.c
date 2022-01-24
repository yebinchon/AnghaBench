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
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  ERROR_DIRECTORY ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 scalar_t__* FUNC7 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL
FUNC9(LPTSTR FilePath, LPCTSTR pszFiles)
{
    TCHAR FullPath[MAX_PATH];
    LPTSTR pch;
    DWORD attrs;

    FUNC8(FilePath, pszFiles, MAX_PATH);
    pch = FUNC7(FilePath, FUNC6('\\'));
    if (pch != NULL)
    {
        *pch = 0;
        if (!FUNC3(FilePath, MAX_PATH, FullPath, NULL))
        {
            FUNC5(FUNC4());
            return FALSE;
        }
        FUNC8(FilePath, FullPath, MAX_PATH);

        attrs = FUNC2(FilePath);
        if (attrs == 0xFFFFFFFF || !(attrs & FILE_ATTRIBUTE_DIRECTORY))
        {
            FUNC5(ERROR_DIRECTORY);
            return FALSE;
        }
    }
    else
        FUNC1(MAX_PATH, FilePath);

    FUNC0(FilePath);
    return TRUE;
}