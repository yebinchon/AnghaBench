
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int szSize ;
typedef int WPARAM ;
typedef int VOID ;
struct TYPE_5__ {int hListBox; TYPE_1__* Pagefile; } ;
struct TYPE_4__ {int NewMinSize; int NewMaxSize; char* pszVolume; int szDrive; } ;
typedef int TCHAR ;
typedef TYPE_2__* PVIRTMEM ;
typedef int LPARAM ;
typedef size_t INT ;


 int IDS_PAGEFILE_NONE ;
 int IDS_PAGEFILE_SYSTEM ;
 int LB_DELETESTRING ;
 int LB_INSERTSTRING ;
 int LB_SETCURSEL ;
 int LoadString (int ,int ,int *,int) ;
 int SendMessage (int ,int ,int ,int ) ;
 int _T (char*) ;
 int _stprintf (int *,int ,int,...) ;
 int hApplet ;

__attribute__((used)) static VOID
UpdatePagefileEntry(PVIRTMEM pVirtMem,
                    INT ListIndex,
                    INT DriveIndex)
{
    TCHAR szDisplayString[256];
    TCHAR szSize[64];

    if ((pVirtMem->Pagefile[DriveIndex].NewMinSize == -1) &&
        (pVirtMem->Pagefile[DriveIndex].NewMaxSize == -1))
    {
        LoadString(hApplet,
                   IDS_PAGEFILE_NONE,
                   szSize,
                   sizeof(szSize) / sizeof(szSize[0]));
    }
    else if ((pVirtMem->Pagefile[DriveIndex].NewMinSize == 0) &&
             (pVirtMem->Pagefile[DriveIndex].NewMaxSize == 0))
    {
        LoadString(hApplet,
                   IDS_PAGEFILE_SYSTEM,
                   szSize,
                   sizeof(szSize) / sizeof(szSize[0]));
    }
    else
    {
        _stprintf(szSize,
                  _T("%d - %d"),
                  pVirtMem->Pagefile[DriveIndex].NewMinSize,
                  pVirtMem->Pagefile[DriveIndex].NewMaxSize);
    }

    _stprintf(szDisplayString,
              _T("%s  [%s]\t%s"),
              pVirtMem->Pagefile[DriveIndex].szDrive,
              pVirtMem->Pagefile[DriveIndex].pszVolume ? pVirtMem->Pagefile[DriveIndex].pszVolume : L"",
              szSize);

    SendMessage(pVirtMem->hListBox, LB_DELETESTRING, (WPARAM)ListIndex, 0);
    SendMessage(pVirtMem->hListBox, LB_INSERTSTRING, (WPARAM)ListIndex, (LPARAM)szDisplayString);
    SendMessage(pVirtMem->hListBox, LB_SETCURSEL, (WPARAM)ListIndex, 0);
}
