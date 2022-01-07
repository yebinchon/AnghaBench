
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;
typedef int HWND ;


 int SB_SETPARTS ;
 int SB_SETTEXTW ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;
 int UNREFERENCED_PARAMETER (int ) ;
 int bInMenuLoop ;
 int hStatusBar ;

__attribute__((used)) static void OnEnterMenuLoop(HWND hWnd)
{
    int nParts;
    UNREFERENCED_PARAMETER(hWnd);


    nParts = -1;
    SendMessageW(hStatusBar, SB_SETPARTS, 1, (LPARAM)&nParts);
    bInMenuLoop = TRUE;
    SendMessageW(hStatusBar, SB_SETTEXTW, (WPARAM)0, (LPARAM)L"");
}
