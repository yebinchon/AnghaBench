
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_13__ {int lpServiceName; TYPE_2__* lpDisplayName; } ;
struct TYPE_12__ {TYPE_1__* dlgInfo; scalar_t__ bDescriptionChanged; scalar_t__ bStartTypeChanged; scalar_t__ bDisplayNameChanged; scalar_t__ bBinaryPathChanged; } ;
struct TYPE_11__ {struct TYPE_11__* lpBinaryPathName; struct TYPE_11__* lpDisplayName; void* dwStartType; void* dwErrorControl; void* dwServiceType; } ;
struct TYPE_10__ {TYPE_9__* pService; int Info; } ;
typedef TYPE_2__* PWSTR ;
typedef TYPE_3__* PPAGEDATA ;
typedef TYPE_2__* LPQUERY_SERVICE_CONFIG ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef int DWORD ;


 int CB_GETCURSEL ;
 int ChangeListViewText (int ,TYPE_9__*,int ) ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IDC_DESCRIPTION ;
 int IDC_DISP_NAME ;
 int IDC_EXEPATH ;
 int IDC_START_TYPE ;
 int LVDESC ;
 int LVNAME ;
 int LVSTARTUP ;
 int ProcessHeap ;
 void* SERVICE_AUTO_START ;
 void* SERVICE_DEMAND_START ;
 void* SERVICE_DISABLED ;
 void* SERVICE_NO_CHANGE ;
 int SendDlgItemMessageW (int ,int ,int ,int,int ) ;
 scalar_t__ SetServiceConfig (TYPE_2__*,int ,int *) ;
 scalar_t__ SetServiceDescription (int ,TYPE_2__*) ;
 int WM_GETTEXT ;
 int WM_GETTEXTLENGTH ;

VOID
SaveDlgInfo(PPAGEDATA pPageData,
            HWND hwndDlg)
{
    LPQUERY_SERVICE_CONFIG pServiceConfig = ((void*)0);
    PWSTR pDisplayName = ((void*)0);
    PWSTR pDescription;
    INT nLength;
    DWORD StartUp;

    pServiceConfig = HeapAlloc(ProcessHeap,
                               HEAP_ZERO_MEMORY,
                               sizeof(*pServiceConfig));
    if (pServiceConfig)
    {
        pServiceConfig->dwServiceType = SERVICE_NO_CHANGE;
        pServiceConfig->dwErrorControl = SERVICE_NO_CHANGE;
        pServiceConfig->dwStartType = SERVICE_NO_CHANGE;

        if (pPageData->bStartTypeChanged)
        {
            StartUp = SendDlgItemMessageW(hwndDlg, IDC_START_TYPE, CB_GETCURSEL, 0, 0);
            switch (StartUp)
            {
                case 0:
                    pServiceConfig->dwStartType = SERVICE_AUTO_START;
                    break;

                case 1:
                    pServiceConfig->dwStartType = SERVICE_DEMAND_START;
                    break;
                case 2:
                    pServiceConfig->dwStartType = SERVICE_DISABLED;
                    break;
            }
        }

        if (pPageData->bBinaryPathChanged)
        {
            nLength = SendDlgItemMessageW(hwndDlg, IDC_EXEPATH, WM_GETTEXTLENGTH, 0, 0);
            pServiceConfig->lpBinaryPathName = HeapAlloc(ProcessHeap,
                                                         HEAP_ZERO_MEMORY,
                                                         (nLength + 1) * sizeof(WCHAR));
            if (pServiceConfig->lpBinaryPathName != ((void*)0))
                SendDlgItemMessageW(hwndDlg, IDC_EXEPATH, WM_GETTEXT, nLength + 1, (LPARAM)pServiceConfig->lpBinaryPathName);
        }

        if (pPageData->bDisplayNameChanged)
        {
            nLength = SendDlgItemMessageW(hwndDlg, IDC_DISP_NAME, WM_GETTEXTLENGTH, 0, 0);
            pDisplayName = HeapAlloc(ProcessHeap,
                                     HEAP_ZERO_MEMORY,
                                     (nLength + 1) * sizeof(WCHAR));
            if (pDisplayName != ((void*)0))
            {
                SendDlgItemMessageW(hwndDlg, IDC_DISP_NAME, WM_GETTEXT, nLength + 1, (LPARAM)pDisplayName);

                if (pPageData->dlgInfo->pService->lpDisplayName)
                    HeapFree(ProcessHeap, 0, pPageData->dlgInfo->pService->lpDisplayName);

                pPageData->dlgInfo->pService->lpDisplayName = pDisplayName;
                pServiceConfig->lpDisplayName = pDisplayName;
            }
        }

        if (SetServiceConfig(pServiceConfig,
                             pPageData->dlgInfo->pService->lpServiceName,
                             ((void*)0)))
        {
            if (pPageData->bDisplayNameChanged)
                ChangeListViewText(pPageData->dlgInfo->Info,
                                   pPageData->dlgInfo->pService,
                                   LVNAME);

            if (pPageData->bStartTypeChanged)
                ChangeListViewText(pPageData->dlgInfo->Info,
                                   pPageData->dlgInfo->pService,
                                   LVSTARTUP);
        }

        if (pServiceConfig->lpBinaryPathName != ((void*)0))
            HeapFree(ProcessHeap, 0, pServiceConfig->lpBinaryPathName);

        HeapFree(ProcessHeap, 0, pServiceConfig);
    }

    if (pPageData->bDescriptionChanged)
    {
        nLength = SendDlgItemMessageW(hwndDlg, IDC_DESCRIPTION, WM_GETTEXTLENGTH, 0, 0);
        pDescription = HeapAlloc(ProcessHeap, HEAP_ZERO_MEMORY, (nLength + 1) * sizeof(WCHAR));
        if (pDescription != ((void*)0))
        {
            SendDlgItemMessageW(hwndDlg, IDC_DESCRIPTION, WM_GETTEXT, nLength + 1, (LPARAM)pDescription);

            if (SetServiceDescription(pPageData->dlgInfo->pService->lpServiceName,
                                      pDescription))
            {
                ChangeListViewText(pPageData->dlgInfo->Info,
                                   pPageData->dlgInfo->pService,
                                   LVDESC);
            }

            HeapFree(ProcessHeap, 0, pDescription);
        }
    }
}
