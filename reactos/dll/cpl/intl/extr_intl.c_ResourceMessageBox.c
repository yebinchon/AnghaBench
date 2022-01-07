
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szErrorText ;
typedef int szErrorCaption ;
typedef int WCHAR ;
typedef int UINT ;
typedef int INT ;
typedef int HWND ;


 int BUFFERSIZE ;
 int LoadStringW (int ,int ,int *,int) ;
 int MessageBoxW (int ,int *,int *,int ) ;
 int hApplet ;

INT
ResourceMessageBox(
    HWND hwnd,
    UINT uType,
    UINT uCaptionId,
    UINT uMessageId)
{
    WCHAR szErrorText[BUFFERSIZE];
    WCHAR szErrorCaption[BUFFERSIZE];

    LoadStringW(hApplet, uMessageId, szErrorText, sizeof(szErrorText) / sizeof(WCHAR));
    LoadStringW(hApplet, uCaptionId, szErrorCaption, sizeof(szErrorCaption) / sizeof(WCHAR));

    return MessageBoxW(hwnd, szErrorText, szErrorCaption, uType);
}
