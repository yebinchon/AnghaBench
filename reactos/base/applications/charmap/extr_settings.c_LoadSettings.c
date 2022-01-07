
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szBuffer ;
typedef int TCHAR ;
typedef int LPBYTE ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 int BM_CLICK ;
 int CB_ERR ;
 int ChangeMapFont (int ) ;
 int ComboBox_FindStringExact (int ,int,int *) ;
 int ComboBox_SetCurSel (int ,int) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetDlgItem (int ,int ) ;
 int HKEY_CURRENT_USER ;
 int IDC_CHECK_ADVANCED ;
 int IDC_COMBO_CHARSET ;
 int IDC_FONTCOMBO ;
 int KEY_READ ;
 int MAX_PATH ;
 int MF_CHECKED ;
 scalar_t__ QueryStringValue (int ,int ,int *,int *,int) ;
 unsigned long REG_DWORD ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int **) ;
 int RegQueryValueEx (int *,int *,int *,unsigned long*,int ,unsigned long*) ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int * _T (char*) ;
 int g_szGeneralRegKey ;
 int hCharmapDlg ;
 int hWnd ;

extern void LoadSettings(void)
{
    HKEY hKey = ((void*)0);
    int iItemIndex = -1;

    if (RegOpenKeyEx(HKEY_CURRENT_USER, g_szGeneralRegKey, 0, KEY_READ, &hKey) == ERROR_SUCCESS)
    {
        TCHAR szBuffer[MAX_PATH];
        DWORD dwAdvancedChecked;
        unsigned long type = REG_DWORD, size = 1024;


        if (QueryStringValue(HKEY_CURRENT_USER, g_szGeneralRegKey, _T("Font"), szBuffer, (sizeof(szBuffer)/sizeof(szBuffer[0]))) == ERROR_SUCCESS)
        {

            hWnd = GetDlgItem(hCharmapDlg, IDC_FONTCOMBO);


            iItemIndex = ComboBox_FindStringExact(hWnd, -1, szBuffer);
            if(iItemIndex != CB_ERR)
            {
                ComboBox_SetCurSel(hWnd, iItemIndex);
                ChangeMapFont(hCharmapDlg);
            }
        }


        if (QueryStringValue(HKEY_CURRENT_USER, g_szGeneralRegKey, _T("CodePage"), szBuffer, (sizeof(szBuffer)/sizeof(szBuffer[0]))) == ERROR_SUCCESS)
        {

            hWnd = GetDlgItem(hCharmapDlg, IDC_COMBO_CHARSET);

            iItemIndex = ComboBox_FindStringExact(hWnd, -1, szBuffer);
            if(iItemIndex != CB_ERR)
            {
                ComboBox_SetCurSel(hWnd, iItemIndex);
            }
        }

        RegQueryValueEx(hKey, _T("Advanced"), ((void*)0), &type, (LPBYTE)&dwAdvancedChecked, &size);

        if(dwAdvancedChecked != FALSE)
            SendDlgItemMessage(hCharmapDlg, IDC_CHECK_ADVANCED, BM_CLICK, MF_CHECKED, 0);

    RegCloseKey(hKey);
    }
    else
    {

        hWnd = GetDlgItem(hCharmapDlg, IDC_FONTCOMBO);

        iItemIndex = ComboBox_FindStringExact(hWnd, -1, _T("Arial"));
        if(iItemIndex != CB_ERR)
        {
            ComboBox_SetCurSel(hWnd, iItemIndex);
            ChangeMapFont(hCharmapDlg);
        }
    }
}
