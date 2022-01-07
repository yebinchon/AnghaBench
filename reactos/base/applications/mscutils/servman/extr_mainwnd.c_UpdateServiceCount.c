
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_3__ {int hStatus; int hListView; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef int LPWSTR ;
typedef int LPARAM ;
typedef int INT ;


 scalar_t__ AllocAndLoadString (int *,int ,int ) ;
 int IDS_NUM_SERVICES ;
 int ListView_GetItemCount (int ) ;
 int LocalFree (int ) ;
 int SB_SETTEXT ;
 int SendMessage (int ,int ,int ,int ) ;
 int _snwprintf (int *,int,int ,int ) ;
 int hInstance ;

VOID
UpdateServiceCount(PMAIN_WND_INFO Info)
{
    LPWSTR lpNumServices;

    if (AllocAndLoadString(&lpNumServices,
                           hInstance,
                           IDS_NUM_SERVICES))
    {
        WCHAR szNumServices[32];

        INT NumListedServ = ListView_GetItemCount(Info->hListView);

        _snwprintf(szNumServices,
                   31,
                   lpNumServices,
                   NumListedServ);

        SendMessage(Info->hStatus,
                    SB_SETTEXT,
                    0,
                    (LPARAM)szNumServices);

        LocalFree(lpNumServices);
    }
}
