
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int TCHAR ;
typedef int LPBYTE ;
typedef int LPARAM ;
typedef int INFCONTEXT ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ HINF ;
typedef scalar_t__ DWORD ;
typedef int Buffer ;


 int CB_ADDSTRING ;
 int CB_ERR ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 scalar_t__ ERROR_SUCCESS ;
 int GetDlgItem (int ,int ) ;
 int HKEY_LOCAL_MACHINE ;
 int IDC_FONTSIZE_COMBO ;
 int IDC_FONTSIZE_CUSTOM ;
 int INF_STYLE_WIN4 ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KEY_READ ;
 int LINE_LEN ;
 scalar_t__ MAX_PATH ;
 scalar_t__ REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,scalar_t__*,int ,scalar_t__*) ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetWindowText (int ,int *) ;
 int SetupCloseInfFile (scalar_t__) ;
 scalar_t__ SetupFindFirstLine (scalar_t__,int ,int *,int *) ;
 int SetupFindNextLine (int *,int *) ;
 scalar_t__ SetupGetIntField (int *,int,int*) ;
 scalar_t__ SetupGetStringField (int *,int ,int *,int,int *) ;
 scalar_t__ SetupOpenInfFile (int ,int *,int ,int *) ;
 int _T (char*) ;
 int _stprintf (int *,int ,int *,int) ;

__attribute__((used)) static VOID
InitFontSizeList(HWND hWnd)
{
    HINF hInf;
    HKEY hKey;
    HWND hFontSize;
    INFCONTEXT Context;
    int i, ci = 0;
    DWORD dwSize, dwValue, dwType;

    hFontSize = GetDlgItem(hWnd, IDC_FONTSIZE_COMBO);

    hInf = SetupOpenInfFile(_T("font.inf"), ((void*)0),
                            INF_STYLE_WIN4, ((void*)0));

    if (hInf != INVALID_HANDLE_VALUE)
    {
        if (SetupFindFirstLine(hInf, _T("Font Sizes"), ((void*)0), &Context))
        {
            if (RegOpenKeyEx(HKEY_LOCAL_MACHINE, _T("SYSTEM\\CurrentControlSet\\Hardware Profiles\\Current\\Software\\Fonts"),
                             0, KEY_READ, &hKey) == ERROR_SUCCESS)
            {
                dwSize = MAX_PATH;
                dwType = REG_DWORD;

                if (RegQueryValueEx(hKey, _T("LogPixels"), ((void*)0), &dwType,
                                    (LPBYTE)&dwValue, &dwSize) != ERROR_SUCCESS)
                {
                    dwValue = 0;
                }

                RegCloseKey(hKey);
            }

            for (;;)
            {
                TCHAR Buffer[LINE_LEN];
                TCHAR Desc[LINE_LEN];

                if (SetupGetStringField(&Context, 0, Buffer, sizeof(Buffer) / sizeof(TCHAR), ((void*)0)) &&
                    SetupGetIntField(&Context, 1, &ci))
                {
                    _stprintf(Desc, _T("%s (%d DPI)"), Buffer, ci);
                    i = SendMessage(hFontSize, CB_ADDSTRING, 0, (LPARAM)Desc);
                    if (i != CB_ERR)
                        SendMessage(hFontSize, CB_SETITEMDATA, (WPARAM)i, (LPARAM)ci);

                    if ((int)dwValue == ci)
                    {
                        SendMessage(hFontSize, CB_SETCURSEL, (WPARAM)i, 0);
                        SetWindowText(GetDlgItem(hWnd, IDC_FONTSIZE_CUSTOM), Desc);
                    }
                    else
                        SendMessage(hFontSize, CB_SETCURSEL, 0, 0);
                }

                if (!SetupFindNextLine(&Context, &Context))
                {
                    break;
                }
            }
        }
    }

    SetupCloseInfFile(hInf);
}
