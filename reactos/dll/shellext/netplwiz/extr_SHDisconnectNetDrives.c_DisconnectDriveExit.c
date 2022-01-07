
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int INT ;
typedef int HWND ;
typedef int HRESULT ;
typedef int DWORD ;


 int CONNECT_UPDATE_PROFILE ;
 int EndDialog (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_CONNECTEDDRIVELIST ;
 int ID_OK ;
 int LVNI_SELECTED ;
 int ListView_GetItemText (int ,int,int ,int *,int ) ;
 int ListView_GetNextItem (int ,int,int ) ;
 int WNetCancelConnection2 (int *,int ,int ) ;
 int _countof (int *) ;

DWORD DisconnectDriveExit(HWND hDlg)
{
    TCHAR driveLetter[10];
    HRESULT hr;
    HWND hListView = GetDlgItem(hDlg, IDC_CONNECTEDDRIVELIST);
    INT nItem = ListView_GetNextItem(hListView, -1, LVNI_SELECTED);

    if (nItem == -1)
        return 0;

    ListView_GetItemText(hListView, nItem, 0, driveLetter, _countof(driveLetter));
    hr = WNetCancelConnection2(driveLetter, CONNECT_UPDATE_PROFILE, FALSE);

    EndDialog(hDlg, ID_OK);
    return hr;
}
