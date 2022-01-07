
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HWND ;


 int COUNT_OF (int *) ;
 int IDI_REGEDIT ;
 int IDS_APP_TITLE ;
 int LoadIconW (int ,int ) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int ShellAboutW (int ,int *,char*,int ) ;
 int hInst ;

void ShowAboutBox(HWND hWnd)
{
    WCHAR AppStr[255];
    LoadStringW(hInst, IDS_APP_TITLE, AppStr, COUNT_OF(AppStr));
    ShellAboutW(hWnd, AppStr, L"", LoadIconW(hInst, MAKEINTRESOURCEW(IDI_REGEDIT)));
}
