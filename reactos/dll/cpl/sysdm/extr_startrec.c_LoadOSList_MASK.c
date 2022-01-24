#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int iFreeLdrIni; int /*<<< orphan*/  szFreeldrIni; } ;
typedef  TYPE_1__* PSTARTINFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HINF ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INF_STYLE_OLDNT ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC10(HWND hwndDlg, PSTARTINFO pStartInfo)
{
    DWORD dwBufSize;
    WCHAR *szSystemDrive;
    HINF hInf;

    dwBufSize = FUNC1(&szSystemDrive);
    if (dwBufSize == 0)
        return FALSE;

    FUNC9(pStartInfo->szFreeldrIni, szSystemDrive);
    FUNC8(pStartInfo->szFreeldrIni, L"\\freeldr.ini");

    if (FUNC5(pStartInfo->szFreeldrIni))
    {
        /* Free resource previously allocated by GetSystemDrive() */
        FUNC2(FUNC0(), 0, szSystemDrive);
        /* freeldr.ini exists */
        hInf = FUNC7(pStartInfo->szFreeldrIni,
                                NULL,
                                INF_STYLE_OLDNT,
                                NULL);

        if (hInf != INVALID_HANDLE_VALUE)
        {
            FUNC4(hInf, hwndDlg);
            FUNC6(hInf);
            pStartInfo->iFreeLdrIni = 1;
            return TRUE;
        }
        return FALSE;
    }

    /* Try loading boot.ini settings */
    FUNC9(pStartInfo->szFreeldrIni, szSystemDrive);
    FUNC8(pStartInfo->szFreeldrIni, L"\\boot.ini");

    /* Free resource previously allocated by GetSystemDrive() */
    FUNC2(FUNC0(), 0, szSystemDrive);

    if (FUNC5(pStartInfo->szFreeldrIni))
    {
        /* Load boot.ini settings */
        hInf = FUNC7(pStartInfo->szFreeldrIni,
                                NULL,
                                INF_STYLE_OLDNT,
                                NULL);

        if (hInf != INVALID_HANDLE_VALUE)
        {
            FUNC3(hInf, hwndDlg);
            FUNC6(hInf);
            pStartInfo->iFreeLdrIni = 2;
            return TRUE;
        }

        return FALSE;
    }

    return FALSE;
}