#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int QuadPart; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
typedef  int UINT ;
struct TYPE_11__ {int dwLength; int ullTotalPhys; } ;
struct TYPE_10__ {size_t Count; TYPE_1__* Pagefile; int /*<<< orphan*/  hSelf; } ;
struct TYPE_8__ {int FreeSize; int NewMinSize; int NewMaxSize; int InitialSize; int /*<<< orphan*/ * szDrive; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_3__* PVIRTMEM ;
typedef  TYPE_4__ MEMORYSTATUSEX ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  IDC_CURRENT ; 
 int /*<<< orphan*/  IDC_CUSTOM ; 
 int /*<<< orphan*/  IDC_DRIVE ; 
 int /*<<< orphan*/  IDC_INITIALSIZE ; 
 int /*<<< orphan*/  IDC_MAXSIZE ; 
 int /*<<< orphan*/  IDC_MINIMUM ; 
 int /*<<< orphan*/  IDC_NOPAGEFILE ; 
 int /*<<< orphan*/  IDC_PAGEFILELIST ; 
 int /*<<< orphan*/  IDC_RECOMMENDED ; 
 int /*<<< orphan*/  IDC_SPACEAVAIL ; 
 int /*<<< orphan*/  IDC_SYSMANSIZE ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int PageFileSizeMb ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int i ; 

__attribute__((used)) static BOOL
FUNC10(HWND hwndDlg, PVIRTMEM pVirtMem)
{
    TCHAR szBuffer[64];
    MEMORYSTATUSEX MemoryStatus;
    ULARGE_INTEGER FreeDiskSpace;
    UINT /*i,*/ FreeMemMb /*, PageFileSizeMb*/;
    INT Index;

    Index = (INT)FUNC5(hwndDlg,
                                    IDC_PAGEFILELIST,
                                    LB_GETCURSEL,
                                    0,
                                    0);
    if (Index >= 0 && Index < pVirtMem->Count)
    {
        /* Set drive letter */
        FUNC7(hwndDlg, IDC_DRIVE,
                       pVirtMem->Pagefile[Index].szDrive);

        /* Set available disk space */
        if (FUNC2(pVirtMem->Pagefile[Index].szDrive,
                               NULL, NULL, &FreeDiskSpace))
        {
            pVirtMem->Pagefile[Index].FreeSize = (UINT)(FreeDiskSpace.QuadPart / (1024 * 1024));
            FUNC9(szBuffer, FUNC8("%u MB"), pVirtMem->Pagefile[Index].FreeSize);
            FUNC7(hwndDlg, IDC_SPACEAVAIL, szBuffer);
        }

        if (pVirtMem->Pagefile[Index].NewMinSize == -1 &&
            pVirtMem->Pagefile[Index].NewMaxSize == -1)
        {
            /* No pagefile */

            FUNC1(FUNC3(pVirtMem->hSelf, IDC_MAXSIZE), FALSE);
            FUNC1(FUNC3(pVirtMem->hSelf, IDC_INITIALSIZE), FALSE);

            FUNC0(pVirtMem->hSelf, IDC_NOPAGEFILE, BST_CHECKED);
        }
        else if (pVirtMem->Pagefile[Index].NewMinSize == 0 &&
                 pVirtMem->Pagefile[Index].NewMaxSize == 0)
        {
            /* System managed size*/

            FUNC1(FUNC3(pVirtMem->hSelf, IDC_MAXSIZE), FALSE);
            FUNC1(FUNC3(pVirtMem->hSelf, IDC_INITIALSIZE), FALSE);

            FUNC0(pVirtMem->hSelf, IDC_SYSMANSIZE, BST_CHECKED);
        }
        else
        {
            /* Custom size */

            /* Enable and fill the custom values */
            FUNC1(FUNC3(pVirtMem->hSelf, IDC_MAXSIZE), TRUE);
            FUNC1(FUNC3(pVirtMem->hSelf, IDC_INITIALSIZE), TRUE);

            FUNC6(pVirtMem->hSelf,
                          IDC_INITIALSIZE,
                          pVirtMem->Pagefile[Index].NewMinSize,
                          FALSE);

            FUNC6(pVirtMem->hSelf,
                          IDC_MAXSIZE,
                          pVirtMem->Pagefile[Index].NewMaxSize,
                          FALSE);

            FUNC0(pVirtMem->hSelf,
                           IDC_CUSTOM,
                           BST_CHECKED);
        }

        /* Set minimum pagefile size */
        FUNC7(hwndDlg, IDC_MINIMUM, FUNC8("16 MB"));

        /* Set recommended pagefile size */
        MemoryStatus.dwLength = sizeof(MEMORYSTATUSEX);
        if (FUNC4(&MemoryStatus))
        {
            FreeMemMb = (UINT)(MemoryStatus.ullTotalPhys / (1024 * 1024));
            FUNC9(szBuffer, FUNC8("%u MB"), FreeMemMb + (FreeMemMb / 2));
            FUNC7(hwndDlg, IDC_RECOMMENDED, szBuffer);
        }

        /* Set current pagefile size */
#if 0
        PageFileSizeMb = 0;
        for (i = 0; i < 26; i++)
        {
            PageFileSizeMb += pVirtMem->Pagefile[i].InitialSize;
        }
        _stprintf(szBuffer, _T("%u MB"), PageFileSizeMb);
        SetDlgItemText(hwndDlg, IDC_CURRENT, szBuffer);
#endif
    }

    return TRUE;
}