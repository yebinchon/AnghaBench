
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTestDescription ;
typedef int szResult ;
typedef int szError ;
typedef int szCaption ;
typedef int WCHAR ;
typedef int INT ;
typedef int HWND ;
typedef int HINSTANCE ;
typedef int BOOL ;


 int DDOffscreenBufferTest (int ,int ) ;
 int DDPrimarySurfaceTest (int ) ;
 int FALSE ;
 scalar_t__ IDNO ;
 int IDS_DDTEST_ERROR ;
 int IDS_MAIN_DIALOG ;
 scalar_t__ IDYES ;
 int LoadStringW (int ,int,int *,int) ;
 int MB_ICONERROR ;
 int MB_ICONQUESTION ;
 int MB_OK ;
 int MB_YESNO ;
 scalar_t__ MessageBox (int *,int *,int *,int) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int ShowWindow (int ,int ) ;
 int TRUE ;

BOOL StartDDTest(HWND hWnd, HINSTANCE hInstance, INT resTestDescription, INT resResult, INT TestNr)
{
    WCHAR szTestDescription[256];
    WCHAR szCaption[256];
    WCHAR szResult[256];
    WCHAR szError[256];
    BOOL Result;

    LoadStringW(hInstance, IDS_MAIN_DIALOG, szCaption, sizeof(szCaption) / sizeof(WCHAR));
    LoadStringW(hInstance, IDS_DDTEST_ERROR, szError, sizeof(szError) / sizeof(WCHAR));
    LoadStringW(hInstance, resTestDescription, szTestDescription, sizeof(szTestDescription) / sizeof(WCHAR));
    LoadStringW(hInstance, resResult, szResult, sizeof(szResult) / sizeof(WCHAR));

    if(MessageBox(((void*)0), szTestDescription, szCaption, MB_YESNO | MB_ICONQUESTION) == IDNO)
        return FALSE;

    ShowWindow(hWnd, SW_SHOW);

    switch(TestNr){
        case 1:
            Result = DDPrimarySurfaceTest(hWnd);
            break;
        case 2:
            Result = DDOffscreenBufferTest(hWnd, FALSE);
            break;
        case 3:
            Result = DDOffscreenBufferTest(hWnd, TRUE);
            break;
        default:
            Result = FALSE;
    }

    ShowWindow(hWnd, SW_HIDE);

    if(!Result)
    {
        MessageBox(((void*)0), szError, szCaption, MB_OK | MB_ICONERROR);
        return FALSE;
    }

    if(MessageBox(((void*)0), szResult, szCaption, MB_YESNO | MB_ICONQUESTION) == IDYES)
        return TRUE;

    return FALSE;
}
