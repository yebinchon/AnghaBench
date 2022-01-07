
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int QuadPart; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
typedef int UINT ;
struct TYPE_11__ {int dwLength; int ullTotalPhys; } ;
struct TYPE_10__ {size_t Count; TYPE_1__* Pagefile; int hSelf; } ;
struct TYPE_8__ {int FreeSize; int NewMinSize; int NewMaxSize; int InitialSize; int * szDrive; } ;
typedef int TCHAR ;
typedef TYPE_3__* PVIRTMEM ;
typedef TYPE_4__ MEMORYSTATUSEX ;
typedef size_t INT ;
typedef int HWND ;
typedef int BOOL ;


 int BST_CHECKED ;
 int CheckDlgButton (int ,int ,int ) ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 scalar_t__ GetDiskFreeSpaceEx (int *,int *,int *,TYPE_2__*) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GlobalMemoryStatusEx (TYPE_4__*) ;
 int IDC_CURRENT ;
 int IDC_CUSTOM ;
 int IDC_DRIVE ;
 int IDC_INITIALSIZE ;
 int IDC_MAXSIZE ;
 int IDC_MINIMUM ;
 int IDC_NOPAGEFILE ;
 int IDC_PAGEFILELIST ;
 int IDC_RECOMMENDED ;
 int IDC_SPACEAVAIL ;
 int IDC_SYSMANSIZE ;
 int LB_GETCURSEL ;
 int PageFileSizeMb ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetDlgItemInt (int ,int ,int,int ) ;
 int SetDlgItemText (int ,int ,int *) ;
 int TRUE ;
 int * _T (char*) ;
 int _stprintf (int *,int *,int) ;
 int i ;

__attribute__((used)) static BOOL
OnSelChange(HWND hwndDlg, PVIRTMEM pVirtMem)
{
    TCHAR szBuffer[64];
    MEMORYSTATUSEX MemoryStatus;
    ULARGE_INTEGER FreeDiskSpace;
    UINT FreeMemMb ;
    INT Index;

    Index = (INT)SendDlgItemMessage(hwndDlg,
                                    IDC_PAGEFILELIST,
                                    LB_GETCURSEL,
                                    0,
                                    0);
    if (Index >= 0 && Index < pVirtMem->Count)
    {

        SetDlgItemText(hwndDlg, IDC_DRIVE,
                       pVirtMem->Pagefile[Index].szDrive);


        if (GetDiskFreeSpaceEx(pVirtMem->Pagefile[Index].szDrive,
                               ((void*)0), ((void*)0), &FreeDiskSpace))
        {
            pVirtMem->Pagefile[Index].FreeSize = (UINT)(FreeDiskSpace.QuadPart / (1024 * 1024));
            _stprintf(szBuffer, _T("%u MB"), pVirtMem->Pagefile[Index].FreeSize);
            SetDlgItemText(hwndDlg, IDC_SPACEAVAIL, szBuffer);
        }

        if (pVirtMem->Pagefile[Index].NewMinSize == -1 &&
            pVirtMem->Pagefile[Index].NewMaxSize == -1)
        {


            EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_MAXSIZE), FALSE);
            EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_INITIALSIZE), FALSE);

            CheckDlgButton(pVirtMem->hSelf, IDC_NOPAGEFILE, BST_CHECKED);
        }
        else if (pVirtMem->Pagefile[Index].NewMinSize == 0 &&
                 pVirtMem->Pagefile[Index].NewMaxSize == 0)
        {


            EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_MAXSIZE), FALSE);
            EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_INITIALSIZE), FALSE);

            CheckDlgButton(pVirtMem->hSelf, IDC_SYSMANSIZE, BST_CHECKED);
        }
        else
        {



            EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_MAXSIZE), TRUE);
            EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_INITIALSIZE), TRUE);

            SetDlgItemInt(pVirtMem->hSelf,
                          IDC_INITIALSIZE,
                          pVirtMem->Pagefile[Index].NewMinSize,
                          FALSE);

            SetDlgItemInt(pVirtMem->hSelf,
                          IDC_MAXSIZE,
                          pVirtMem->Pagefile[Index].NewMaxSize,
                          FALSE);

            CheckDlgButton(pVirtMem->hSelf,
                           IDC_CUSTOM,
                           BST_CHECKED);
        }


        SetDlgItemText(hwndDlg, IDC_MINIMUM, _T("16 MB"));


        MemoryStatus.dwLength = sizeof(MEMORYSTATUSEX);
        if (GlobalMemoryStatusEx(&MemoryStatus))
        {
            FreeMemMb = (UINT)(MemoryStatus.ullTotalPhys / (1024 * 1024));
            _stprintf(szBuffer, _T("%u MB"), FreeMemMb + (FreeMemMb / 2));
            SetDlgItemText(hwndDlg, IDC_RECOMMENDED, szBuffer);
        }
    }

    return TRUE;
}
