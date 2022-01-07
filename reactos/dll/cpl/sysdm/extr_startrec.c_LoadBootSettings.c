
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szValue ;
typedef int szOptions ;
typedef int szName ;
typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_3__ {int * szOptions; int * szSectionName; int * szBootPath; scalar_t__ BootType; } ;
typedef TYPE_1__* PBOOTRECORD ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HWND ;
typedef int HINF ;
typedef scalar_t__ DWORD ;
typedef int BOOTRECORD ;


 int BM_SETCHECK ;
 scalar_t__ BST_CHECKED ;
 int CB_ADDSTRING ;
 scalar_t__ CB_ERR ;
 int CB_FINDSTRING ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IDC_STRECLIST ;
 int IDC_STRECOSCOMBO ;
 int MAX_PATH ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetTimeout (int ,scalar_t__) ;
 int SetupFindFirstLineW (int ,char*,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetStringFieldW (int *,int,int *,int,scalar_t__*) ;
 int TRUE ;
 int _wcsnicmp (int *,char*,int) ;
 scalar_t__ _wtoi (int *) ;
 int wcscmp (int *,int *) ;
 int wcscpy (int *,int *) ;

__attribute__((used)) static INT
LoadBootSettings(HINF hInf, HWND hwndDlg)
{
    INFCONTEXT InfContext;
    WCHAR szName[MAX_PATH];
    WCHAR szValue[MAX_PATH];
    DWORD LineLength;
    DWORD TimeOut = 0;
    WCHAR szDefaultOS[MAX_PATH];
    WCHAR szOptions[MAX_PATH];
    PBOOTRECORD pRecord;
    LRESULT lResult;

    if(!SetupFindFirstLineW(hInf,
                           L"boot loader",
                           ((void*)0),
                           &InfContext))
    {
        return FALSE;
    }

    do
    {
        if (!SetupGetStringFieldW(&InfContext,
                                 0,
                                 szName,
                                 sizeof(szName) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        if (!SetupGetStringFieldW(&InfContext,
                                 1,
                                 szValue,
                                 sizeof(szValue) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        if (!_wcsnicmp(szName, L"timeout", 7))
        {
            TimeOut = _wtoi(szValue);
        }

        if (!_wcsnicmp(szName, L"default", 7))
        {
            wcscpy(szDefaultOS, szValue);
        }

    }
    while (SetupFindNextLine(&InfContext, &InfContext));

    if (!SetupFindFirstLineW(hInf,
                            L"operating systems",
                            ((void*)0),
                            &InfContext))
    {

        return FALSE;
    }

    do
    {
        if (!SetupGetStringFieldW(&InfContext,
                                 0,
                                 szName,
                                 sizeof(szName) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        if (!SetupGetStringFieldW(&InfContext,
                                 1,
                                 szValue,
                                 sizeof(szValue) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        SetupGetStringFieldW(&InfContext,
                            2,
                            szOptions,
                            sizeof(szOptions) / sizeof(WCHAR),
                            &LineLength);

        pRecord = (PBOOTRECORD) HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(BOOTRECORD));
        if (pRecord)
        {
            pRecord->BootType = 0;
            wcscpy(pRecord->szBootPath, szName);
            wcscpy(pRecord->szSectionName, szValue);
            wcscpy(pRecord->szOptions, szOptions);

            if (!wcscmp(szName, szDefaultOS))
            {

                wcscpy(szDefaultOS, szValue);
            }

            lResult = SendDlgItemMessageW(hwndDlg, IDC_STRECOSCOMBO, CB_ADDSTRING, (WPARAM)0, (LPARAM)szValue);
            if (lResult != CB_ERR)
            {
                SendDlgItemMessageW(hwndDlg, IDC_STRECOSCOMBO, CB_SETITEMDATA, (WPARAM)lResult, (LPARAM)pRecord);
            }
            else
            {
               HeapFree(GetProcessHeap(), 0, pRecord);
            }
        }

    }
    while (SetupFindNextLine(&InfContext, &InfContext));


    lResult = SendDlgItemMessageW(hwndDlg, IDC_STRECOSCOMBO, CB_FINDSTRING, (WPARAM)0, (LPARAM)szDefaultOS);
    if (lResult != CB_ERR)
    {

       SendDlgItemMessageW(hwndDlg, IDC_STRECOSCOMBO, CB_SETCURSEL, (WPARAM)lResult, (LPARAM)0);
    }

    if(TimeOut)
    {
        SendDlgItemMessageW(hwndDlg, IDC_STRECLIST, BM_SETCHECK, (WPARAM)BST_CHECKED, (LPARAM)0);
    }

    SetTimeout(hwndDlg, TimeOut);

    return TRUE;
}
