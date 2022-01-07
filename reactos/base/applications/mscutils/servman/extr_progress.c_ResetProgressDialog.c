
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef int HWND ;


 scalar_t__ AllocAndLoadString (scalar_t__*,int ,int ) ;
 int IDC_SERVCON_INFO ;
 int IDC_SERVCON_NAME ;
 int IDC_SERVCON_PROGRESS ;
 int LocalFree (scalar_t__) ;
 int PBM_SETPOS ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int hInstance ;

__attribute__((used)) static VOID
ResetProgressDialog(HWND hDlg,
                    LPWSTR ServiceName,
                    ULONG LabelId)
{
    LPWSTR lpProgStr;


    if (AllocAndLoadString(&lpProgStr,
                           hInstance,
                           LabelId))
    {

        SendDlgItemMessageW(hDlg,
                            IDC_SERVCON_INFO,
                            WM_SETTEXT,
                            0,
                            (LPARAM)lpProgStr);

        LocalFree(lpProgStr);
    }


    SendDlgItemMessageW(hDlg,
                        IDC_SERVCON_NAME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)ServiceName);


    SendDlgItemMessageW(hDlg,
                        IDC_SERVCON_PROGRESS,
                        PBM_SETPOS,
                        0,
                        0);
}
