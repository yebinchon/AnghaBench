
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int UINT ;
typedef int LPARAM ;


 int PostMessage (int ,int ,int ,int ) ;
 int hKbSwitchWnd ;

__attribute__((used)) static VOID
SendMessageToMainWnd(UINT Msg, WPARAM wParam, LPARAM lParam)
{
    PostMessage(hKbSwitchWnd, Msg, wParam, lParam);
}
