
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD ;


 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetWindowLongW (int ,int ) ;
 int SetWindowLongW (int ,int ,int) ;
 int TRUE ;
 int TTS_BALLOON ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_CLIPSIBLINGS ;
 int WS_DLGFRAME ;
 int WS_EX_TOOLWINDOW ;
 int WS_POPUP ;

__attribute__((used)) static LRESULT
TOOLTIPS_NCCreate (HWND hwnd)
{
    DWORD dwStyle = GetWindowLongW (hwnd, GWL_STYLE);
    DWORD dwExStyle = GetWindowLongW (hwnd, GWL_EXSTYLE);

    dwStyle &= ~(WS_CHILD | WS_BORDER | WS_DLGFRAME);
    dwStyle |= (WS_POPUP | WS_BORDER | WS_CLIPSIBLINGS);



    if (dwStyle & TTS_BALLOON) dwStyle &= ~WS_BORDER;

    SetWindowLongW (hwnd, GWL_STYLE, dwStyle);

    dwExStyle |= WS_EX_TOOLWINDOW;
    SetWindowLongW (hwnd, GWL_EXSTYLE, dwExStyle);

    return TRUE;
}
