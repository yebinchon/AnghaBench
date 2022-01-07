
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szValue ;
typedef int szName ;
typedef int szDefaultOs ;
typedef int WPARAM ;
typedef int WCHAR ;
typedef int PINT ;
typedef scalar_t__ PBOOTRECORD ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HWND ;
typedef int HINF ;
typedef scalar_t__ DWORD ;


 int BM_SETCHECK ;
 scalar_t__ BST_CHECKED ;
 int CB_ADDSTRING ;
 scalar_t__ CB_ERR ;
 int CB_FINDSTRING ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 int IDC_STRECLIST ;
 int IDC_STRECOSCOMBO ;
 int MAX_PATH ;
 scalar_t__ ReadFreeldrSection (int ,int *) ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetTimeout (int ,scalar_t__) ;
 int SetupFindFirstLineW (int ,char*,char*,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetIntField (int *,int,int ) ;
 int SetupGetStringFieldW (int *,int,int *,int,scalar_t__*) ;
 int TRUE ;
 int wcscmp (int *,int *) ;
 int wcscpy (int *,int *) ;

__attribute__((used)) static INT
LoadFreeldrSettings(HINF hInf, HWND hwndDlg)
{
    INFCONTEXT InfContext;
    PBOOTRECORD pRecord;
    WCHAR szDefaultOs[MAX_PATH];
    WCHAR szName[MAX_PATH];
    WCHAR szValue[MAX_PATH];
    DWORD LineLength;
    DWORD TimeOut;
    LRESULT lResult;

    if (!SetupFindFirstLineW(hInf,
                           L"FREELOADER",
                           L"DefaultOS",
                           &InfContext))
    {

        return FALSE;
    }

    if (!SetupGetStringFieldW(&InfContext,
                             1,
                             szDefaultOs,
                             sizeof(szDefaultOs) / sizeof(WCHAR),
                             &LineLength))
    {

        return FALSE;
    }

    if (!SetupFindFirstLineW(hInf,
                           L"FREELOADER",
                           L"TimeOut",
                           &InfContext))
    {

        return FALSE;
    }


    if (!SetupGetIntField(&InfContext,
                          1,
                          (PINT)&TimeOut))
    {

        return FALSE;
    }

    if (!SetupFindFirstLineW(hInf,
                           L"Operating Systems",
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

        pRecord = ReadFreeldrSection(hInf, szName);
        if (pRecord)
        {
            lResult = SendDlgItemMessageW(hwndDlg, IDC_STRECOSCOMBO, CB_ADDSTRING, (WPARAM)0, (LPARAM)szValue);
            if (lResult != CB_ERR)
            {
                SendDlgItemMessageW(hwndDlg, IDC_STRECOSCOMBO, CB_SETITEMDATA, (WPARAM)lResult, (LPARAM)pRecord);
                if (!wcscmp(szDefaultOs, szName))
                {

                    wcscpy(szDefaultOs, szValue);
                }
            }
            else
            {
               HeapFree(GetProcessHeap(), 0, pRecord);
            }
        }
    }
    while (SetupFindNextLine(&InfContext, &InfContext));


    lResult = SendDlgItemMessageW(hwndDlg, IDC_STRECOSCOMBO, CB_FINDSTRING, (WPARAM)-1, (LPARAM)szDefaultOs);
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
