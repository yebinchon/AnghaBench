
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int szSize ;
typedef int WPARAM ;
typedef int VOID ;
struct TYPE_6__ {int hSelf; int hListBox; TYPE_1__* Pagefile; } ;
struct TYPE_5__ {int NewMinSize; int NewMaxSize; int pszVolume; int szDrive; scalar_t__ bUsed; } ;
typedef int TCHAR ;
typedef TYPE_2__* PVIRTMEM ;
typedef int LPARAM ;
typedef int INT ;


 int IDS_PAGEFILE_NONE ;
 int IDS_PAGEFILE_SYSTEM ;
 int LB_ADDSTRING ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int LoadString (int ,int ,int *,int) ;
 int OnSelChange (int ,TYPE_2__*) ;
 int SendMessage (int ,int ,int,int) ;
 int _T (char*) ;
 int _stprintf (int *,int,int,int,...) ;
 int hApplet ;

__attribute__((used)) static VOID
InitPagefileList(PVIRTMEM pVirtMem)
{
    TCHAR szDisplayString[256];
    TCHAR szSize[64];
    INT Index;
    INT i;

    for (i = 0; i < 26; i++)
    {
        if (pVirtMem->Pagefile[i].bUsed)
        {
            if ((pVirtMem->Pagefile[i].NewMinSize == -1) &&
                (pVirtMem->Pagefile[i].NewMaxSize == -1))
            {
                LoadString(hApplet,
                           IDS_PAGEFILE_NONE,
                           szSize,
                           sizeof(szSize) / sizeof(szSize[0]));
            }
            else if ((pVirtMem->Pagefile[i].NewMinSize == 0) &&
                     (pVirtMem->Pagefile[i].NewMaxSize == 0))
            {
                LoadString(hApplet,
                           IDS_PAGEFILE_SYSTEM,
                           szSize,
                           sizeof(szSize) / sizeof(szSize[0]));
            }
            else
            {
                _stprintf(szSize, _T("%d - %d"),
                          pVirtMem->Pagefile[i].NewMinSize,
                          pVirtMem->Pagefile[i].NewMaxSize);
            }

            _stprintf(szDisplayString,
                      _T("%s  [%s]\t%s"),
                      pVirtMem->Pagefile[i].szDrive,
                      pVirtMem->Pagefile[i].pszVolume ? pVirtMem->Pagefile[i].pszVolume : _T(""),
                      szSize);

            Index = SendMessage(pVirtMem->hListBox, LB_ADDSTRING, (WPARAM)0, (LPARAM)szDisplayString);
            SendMessage(pVirtMem->hListBox, LB_SETITEMDATA, Index, i);
        }
    }

    SendMessage(pVirtMem->hListBox, LB_SETCURSEL, (WPARAM)0, (LPARAM)0);

    OnSelChange(pVirtMem->hSelf, pVirtMem);
}
