
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szErrorText ;
typedef int szErrorCaption ;
typedef int WCHAR ;
typedef int VOID ;
typedef int UINT ;
typedef int HWND ;
typedef int HINSTANCE ;


 int BUFFERSIZE ;
 int LoadStringW (int ,int ,int *,int) ;
 int MessageBoxW (int ,int *,int *,int ) ;

VOID
ResourceMessageBox(
    HINSTANCE hInstance,
    HWND hwnd,
    UINT uType,
    UINT uCaptionId,
    UINT uMessageId)
{
    WCHAR szErrorText[BUFFERSIZE];
    WCHAR szErrorCaption[BUFFERSIZE];

    LoadStringW(hInstance, uMessageId, szErrorText, sizeof(szErrorText) / sizeof(WCHAR));
    LoadStringW(hInstance, uCaptionId, szErrorCaption, sizeof(szErrorCaption) / sizeof(WCHAR));

    MessageBoxW(hwnd, szErrorText, szErrorCaption, uType);
}
