
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FindWindow (int *,char*) ;
 int GetConsoleTitle (char*,int) ;
 int GetCurrentProcessId () ;
 int GetTickCount () ;
 int MY_BUFSIZE ;
 int SetConsoleTitle (char*) ;
 int Sleep (int) ;
 scalar_t__ g_hWnd ;
 scalar_t__ s_hwnd ;
 int wsprintf (char*,char*,char*,int ,int ) ;

__attribute__((used)) static void
GetConsoleHwnd(void)
{


    char pszNewWindowTitle[1024];
    char pszOldWindowTitle[1024];


    if (s_hwnd != 0)
 return;
    GetConsoleTitle(pszOldWindowTitle, 1024);

    wsprintf(pszNewWindowTitle, "%s/%d/%d",
     pszOldWindowTitle,
     GetTickCount(),
     GetCurrentProcessId());
    SetConsoleTitle(pszNewWindowTitle);
    Sleep(40);
    s_hwnd = FindWindow(((void*)0), pszNewWindowTitle);

    SetConsoleTitle(pszOldWindowTitle);
}
