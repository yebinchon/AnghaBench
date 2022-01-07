
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int FALSE ;
 int SetupStatusBar (int ,int ) ;
 int TRUE ;
 int UpdateStatusBar () ;
 int bInMenuLoop ;

__attribute__((used)) static void OnExitMenuLoop(HWND hWnd)
{
    bInMenuLoop = FALSE;

    SetupStatusBar(hWnd, TRUE);
    UpdateStatusBar();
}
