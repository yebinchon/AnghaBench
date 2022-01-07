
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_6__ {int bottom; int top; } ;
struct TYPE_5__ {int cy; int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ RECT ;
typedef char* LPWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int GetDC (int ) ;
 int GetProcessHeap () ;
 int GetTextExtentPoint32W (int ,char*,int ,TYPE_1__*) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int ReleaseDC (int ,int ) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SendMessageW (int ,int ,int,int ) ;
 int SetWindowPos (int ,int *,int ,int ,int,int,int) ;
 int TRACE (char*) ;
 int WM_GETFONT ;
 int WM_GETTEXT ;
 int WM_GETTEXTLENGTH ;
 int lstrlenW (char*) ;
 scalar_t__ max (int ,int) ;
 int min (scalar_t__,int) ;

__attribute__((used)) static void ctrl_resize(HWND hctrl, UINT min_width, UINT max_width, BOOL multiline)
{
    LPWSTR text;
    UINT len, final_width;
    UINT lines, final_height;
    SIZE size;
    RECT rc;
    HDC hdc;
    WCHAR *c;
    HFONT font;

    TRACE("\n");

    len = SendMessageW(hctrl, WM_GETTEXTLENGTH, 0, 0);
    text = HeapAlloc(GetProcessHeap(), 0, sizeof(WCHAR)*(len+1));
    if(!text) return;
    SendMessageW(hctrl, WM_GETTEXT, len+1, (LPARAM)text);

    hdc = GetDC(hctrl);
    font = (HFONT)SendMessageW(hctrl, WM_GETFONT, 0, 0);
    font = SelectObject(hdc, font);
    GetTextExtentPoint32W(hdc, text, lstrlenW(text), &size);
    SelectObject(hdc, font);
    ReleaseDC(hctrl, hdc);

    if(len && multiline)
    {

        for(lines = 1, c = text; *c != '\0'; c++)
            if(*c == '\n') lines++;

        final_height = size.cy*lines + 2*4;
    }
    else
    {
        GetWindowRect(hctrl, &rc);
        final_height = rc.bottom - rc.top;
    }

    final_width = min(max(size.cx, min_width) + 4, max_width);
    SetWindowPos(hctrl, ((void*)0), 0, 0, final_width, final_height,
                 SWP_NOZORDER | SWP_NOMOVE | SWP_NOACTIVATE);

    HeapFree(GetProcessHeap(), 0, text);
}
