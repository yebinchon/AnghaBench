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
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  ProcessHeap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

LPTSTR FUNC9(LPTSTR lpClass)
{
    HKEY hKey = NULL;
    LPTSTR ConType = NULL;
    LPTSTR ConTypeTmp = NULL;
    TCHAR Path[256];
    LPTSTR PrePath  = FUNC6("SYSTEM\\CurrentControlSet\\Control\\Network\\{4D36E972-E325-11CE-BFC1-08002BE10318}\\");
    LPTSTR PostPath = FUNC6("\\Connection");
    DWORD PathSize;
    DWORD dwType;
    DWORD dwDataSize;

    /* don't overflow the buffer */
    PathSize = FUNC7(PrePath) + FUNC7(lpClass) + FUNC7(PostPath) + 1;
    if (PathSize >= 255)
        return NULL;

    FUNC8(Path, FUNC6("%s%s%s"), PrePath, lpClass, PostPath);

    if (FUNC4(HKEY_LOCAL_MACHINE,
                     Path,
                     0,
                     KEY_READ,
                     &hKey) == ERROR_SUCCESS)
    {
        if (FUNC5(hKey,
                            FUNC6("Name"),
                            NULL,
                            &dwType,
                            NULL,
                            &dwDataSize) == ERROR_SUCCESS)
        {
            ConTypeTmp = (LPTSTR)FUNC1(ProcessHeap,
                                           0,
                                           dwDataSize);

            if (ConTypeTmp == NULL)
                return NULL;
                                        
            ConType = (LPTSTR)FUNC1(ProcessHeap,
                                        0,
                                        dwDataSize);

            if (ConType == NULL)
            {
                FUNC2(ProcessHeap, 0, ConTypeTmp);
                return NULL;
            }

            if (FUNC5(hKey,
                                FUNC6("Name"),
                                NULL,
                                &dwType,
                                (PBYTE)ConTypeTmp,
                                &dwDataSize) != ERROR_SUCCESS)
            {
                FUNC2(ProcessHeap,
                         0,
                         ConType);

                ConType = NULL;
            }

            if (ConType)
                FUNC0(ConTypeTmp, ConType);
            FUNC2(ProcessHeap, 0, ConTypeTmp);
        }
    }

    if (hKey != NULL)
        FUNC3(hKey);

    return ConType;
}