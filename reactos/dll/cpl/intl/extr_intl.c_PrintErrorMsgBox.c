
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szErrorText ;
typedef int szErrorCaption ;
typedef int WCHAR ;
typedef int VOID ;
typedef int UINT ;


 int BUFFERSIZE ;
 int IDS_ERROR ;
 int LoadStringW (int ,int ,int *,int) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBoxW (int *,int *,int *,int) ;
 int hApplet ;

VOID
PrintErrorMsgBox(UINT msg)
{
    WCHAR szErrorText[BUFFERSIZE];
    WCHAR szErrorCaption[BUFFERSIZE];

    LoadStringW(hApplet, msg, szErrorText, sizeof(szErrorText) / sizeof(WCHAR));
    LoadStringW(hApplet, IDS_ERROR, szErrorCaption, sizeof(szErrorCaption) / sizeof(WCHAR));

    MessageBoxW(((void*)0), szErrorText, szErrorCaption, MB_OK | MB_ICONERROR);
}
