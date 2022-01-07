
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTempMessage ;
typedef int VOID ;
typedef int TCHAR ;
typedef int MCIERROR ;
typedef int HWND ;


 int ARRAYSIZE (int *) ;
 scalar_t__ FALSE ;
 int IDS_DEFAULTMCIERRMSG ;
 int LoadString (int ,int ,int *,int ) ;
 int MAX_MCISTR ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int MessageBox (int ,int *,int ,int) ;
 int StringCbPrintf (int *,int,int ,int ,int *) ;
 int _T (char*) ;
 int hInstance ;
 scalar_t__ mciGetErrorString (int ,int *,int ) ;
 int szAppTitle ;

__attribute__((used)) static VOID
ShowMCIError(HWND hwnd, MCIERROR mciError)
{
    TCHAR szErrorMessage[MAX_MCISTR];
    TCHAR szTempMessage[MAX_MCISTR + 44];

    if (mciGetErrorString(mciError, szErrorMessage, ARRAYSIZE(szErrorMessage)) == FALSE)
    {
        LoadString(hInstance, IDS_DEFAULTMCIERRMSG, szErrorMessage, ARRAYSIZE(szErrorMessage));
    }

    StringCbPrintf(szTempMessage, sizeof(szTempMessage), _T("MMSYS%lu: %s"), mciError, szErrorMessage);
    MessageBox(hwnd, szTempMessage, szAppTitle, MB_OK | MB_ICONEXCLAMATION);
}
