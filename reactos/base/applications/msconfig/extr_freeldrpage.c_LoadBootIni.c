
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int szBuffer ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_2__ {int OSConfigurationCount; int TimeOut; scalar_t__ szDefaultPos; scalar_t__ szDefaultOS; int UseBootIni; } ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HRESULT ;
typedef int FILE ;
typedef int BOOL ;


 int BUFFER_SIZE ;
 int EnableWindow (int ,int ) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_BTN_MOVE_DOWN_BOOT_OPTION ;
 int IDC_BTN_MOVE_UP_BOOT_OPTION ;
 int IDC_BTN_SET_DEFAULT_BOOT ;
 int IDC_LIST_BOX ;
 int IDC_TXT_BOOT_TIMEOUT ;
 int LB_ADDSTRING ;
 scalar_t__ LB_ERR ;
 int LB_FINDSTRING ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int SendMessage (int ,int ,scalar_t__,int) ;
 scalar_t__ SendMessageW (int ,int ,int,int ) ;
 int SetDlgItemInt (int ,int ,int ,int ) ;
 TYPE_1__ Settings ;
 int StringCbCatW (int*,int,char*) ;
 int StringCbCopyW (int*,int,int*) ;
 int TRUE ;
 int _wcsnicmp (int*,char*,int) ;
 int * _wfopen (int*,char*) ;
 int _wtoi (int*) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ fgetws (int*,int,int *) ;
 int wcscpy (scalar_t__,int*) ;
 int wcslen (int*) ;

__attribute__((used)) static BOOL
LoadBootIni(WCHAR *szDrive, HWND hDlg)
{
    WCHAR szBuffer[BUFFER_SIZE];
    HWND hDlgCtrl;
    FILE * file;
    UINT length;
    LRESULT pos;
    HRESULT hr;

    hr = StringCbCopyW(szBuffer, sizeof(szBuffer), szDrive);
    if (FAILED(hr))
        return FALSE;

    hr = StringCbCatW(szBuffer, sizeof(szBuffer), L"freeldr.ini");
    if (FAILED(hr))
        return FALSE;

    file = _wfopen(szBuffer, L"rt");
    if (!file)
    {
        hr = StringCbCopyW(szBuffer, sizeof(szBuffer), szDrive);
        if (FAILED(hr))
            return FALSE;

        hr = StringCbCatW(szBuffer, sizeof(szBuffer), L"boot.ini");
        if (FAILED(hr))
            return FALSE;

        file = _wfopen(szBuffer, L"rt");
        if (!file)
            return FALSE;
    }

    hDlgCtrl = GetDlgItem(hDlg, IDC_LIST_BOX);

    while(!feof(file))
    {
        if (fgetws(szBuffer, BUFFER_SIZE, file))
        {
            length = wcslen(szBuffer);
            if (length > 1)
            {
                szBuffer[length] = L'\0';
                szBuffer[length - 1] = L'\0';

                pos = SendMessageW(hDlgCtrl, LB_ADDSTRING, 0, (LPARAM)szBuffer);

                if (szBuffer[0] == L'[')
                    continue;

                if (!_wcsnicmp(szBuffer, L"timeout=", 8))
                {
                    Settings.TimeOut = _wtoi(&szBuffer[8]);
                    continue;
                }

                if (!_wcsnicmp(szBuffer, L"default=", 8))
                {
                    wcscpy(Settings.szDefaultOS, &szBuffer[8]);
                    continue;
                }
                if (pos != LB_ERR)
                    SendMessage(hDlgCtrl, LB_SETITEMDATA, pos, 1);
                Settings.OSConfigurationCount++;
            }
        }
    }

    fclose(file);
    Settings.UseBootIni = TRUE;

    pos = SendMessageW(hDlgCtrl, LB_FINDSTRING, 3, (LPARAM)Settings.szDefaultOS);
    if (pos != LB_ERR)
    {
       Settings.szDefaultPos = pos;
       SendMessage(hDlgCtrl, LB_SETCURSEL, pos, 0);
    }

    SetDlgItemInt(hDlg, IDC_TXT_BOOT_TIMEOUT, Settings.TimeOut, FALSE);
    if (Settings.OSConfigurationCount < 2)
    {
        EnableWindow(GetDlgItem(hDlg, IDC_BTN_SET_DEFAULT_BOOT), FALSE);
        EnableWindow(GetDlgItem(hDlg, IDC_BTN_MOVE_UP_BOOT_OPTION), FALSE);
        EnableWindow(GetDlgItem(hDlg, IDC_BTN_MOVE_DOWN_BOOT_OPTION), FALSE);
    }
    return TRUE;
}
