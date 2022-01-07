
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IsAdvancedView; } ;
typedef char TCHAR ;
typedef int LPBYTE ;
typedef int * HKEY ;
typedef int DWORD ;


 int ComboBox_GetText (int ,char*,int) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetDlgItem (int ,int ) ;
 int HKEY_CURRENT_USER ;
 int IDC_COMBO_CHARSET ;
 int IDC_FONTCOMBO ;
 int KEY_SET_VALUE ;
 int MAX_PATH ;
 int REG_DWORD ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int ,int *,int **,int *) ;
 int RegSetValueEx (int *,int ,int ,int ,int ,int ) ;
 TYPE_1__ Settings ;
 int _T (char*) ;
 int g_szGeneralRegKey ;
 int hCharmapDlg ;
 int hWnd ;

extern void SaveSettings(void)
{
    HKEY hKey = ((void*)0);

    if (RegCreateKeyEx(HKEY_CURRENT_USER, g_szGeneralRegKey, 0, ((void*)0), REG_OPTION_NON_VOLATILE, KEY_SET_VALUE, ((void*)0), &hKey, ((void*)0)) == ERROR_SUCCESS)
    {
        TCHAR szBuffer[MAX_PATH];

        hWnd = GetDlgItem(hCharmapDlg, IDC_FONTCOMBO);
        ComboBox_GetText(hWnd, szBuffer, MAX_PATH);

        if(*szBuffer != '\0')
            RegSetValueEx(hKey, _T("Font"), 0, REG_SZ, (LPBYTE) szBuffer, (DWORD) MAX_PATH);

        hWnd = GetDlgItem(hCharmapDlg, IDC_COMBO_CHARSET);
        ComboBox_GetText(hWnd, szBuffer, MAX_PATH);

        if(*szBuffer != '\0')
            RegSetValueEx(hKey, _T("CodePage"), 0, REG_SZ, (LPBYTE) szBuffer, (DWORD) MAX_PATH);

        RegSetValueEx(hKey, _T("Advanced"), 0, REG_DWORD, (LPBYTE)&Settings.IsAdvancedView, (DWORD) sizeof(DWORD));

        RegCloseKey(hKey);
    }
}
