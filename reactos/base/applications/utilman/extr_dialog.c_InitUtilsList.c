
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* szResource; scalar_t__ bState; int lpProgram; int uNameId; } ;
typedef TYPE_1__ WCHAR ;
typedef int VOID ;
typedef size_t UINT ;
struct TYPE_9__ {int hListDlg; int szNotRunning; int szRunning; int hInstance; } ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ BOOL ;


 TYPE_1__* EntriesList ;
 scalar_t__ FALSE ;
 TYPE_6__ Globals ;
 scalar_t__ IsProcessRunning (int ) ;
 int LB_ADDSTRING ;
 scalar_t__ LB_ERR ;
 int LB_RESETCONTENT ;
 int LB_SETITEMDATA ;
 int LoadStringW (int ,int ,TYPE_1__*,size_t) ;
 int MAX_BUFFER ;
 scalar_t__ SendMessageW (int ,int ,scalar_t__,int ) ;
 int StringCchPrintfW (TYPE_1__*,size_t,int ,TYPE_1__*) ;
 size_t _countof (TYPE_1__*) ;

VOID InitUtilsList(BOOL bInitGui)
{
    UINT i;

    if (!bInitGui)
    {




        for (i = 0; i < _countof(EntriesList); ++i)
        {
            LoadStringW(Globals.hInstance, EntriesList[i].uNameId,
                        EntriesList[i].szResource, _countof(EntriesList[i].szResource));

            EntriesList[i].bState = FALSE;
        }
    }
    else
    {
        INT iItem;
        BOOL bIsRunning;
        WCHAR szFormat[MAX_BUFFER];


        SendMessageW(Globals.hListDlg, LB_RESETCONTENT, 0, 0);


        for (i = 0; i < _countof(EntriesList); ++i)
        {
            bIsRunning = IsProcessRunning(EntriesList[i].lpProgram);
            EntriesList[i].bState = bIsRunning;


            StringCchPrintfW(szFormat, _countof(szFormat),
                             (bIsRunning ? Globals.szRunning : Globals.szNotRunning),
                             EntriesList[i].szResource);


            iItem = (INT)SendMessageW(Globals.hListDlg, LB_ADDSTRING, 0, (LPARAM)szFormat);
            if (iItem != LB_ERR)
                SendMessageW(Globals.hListDlg, LB_SETITEMDATA, iItem, (LPARAM)&EntriesList[i]);
        }
    }
}
