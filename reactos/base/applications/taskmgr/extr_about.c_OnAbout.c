
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTaskmgr ;
typedef int WCHAR ;
typedef int HICON ;


 int DeleteObject (int ) ;
 int IDI_TASKMANAGER ;
 int IDS_APP_TITLE ;
 int LoadIcon (int ,int ) ;
 int LoadStringW (int ,int ,int *,int) ;
 int MAKEINTRESOURCE (int ) ;
 int ShellAboutW (int ,int *,int ,int ) ;
 int hInst ;
 int hMainWnd ;

void OnAbout(void)
{
    WCHAR szTaskmgr[128];
    HICON taskmgrIcon = LoadIcon(hInst, MAKEINTRESOURCE(IDI_TASKMANAGER));

    LoadStringW(hInst, IDS_APP_TITLE, szTaskmgr, sizeof(szTaskmgr)/sizeof(WCHAR));
    ShellAboutW(hMainWnd, szTaskmgr, 0, taskmgrIcon);
    DeleteObject(taskmgrIcon);
}
