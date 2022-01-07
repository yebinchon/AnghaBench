
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {int nPageY; } ;
typedef TYPE_1__* LPSCROLLSTATE ;
typedef int LPARAM ;
typedef int HWND ;


 int GetKeyState (int ) ;
 int MAKELONG (int ,int ) ;
 int OnScroll (int ,int ,int ,int,TYPE_1__*) ;
 int SB_BOTTOM ;
 int SB_HORZ ;
 int SB_LEFT ;
 int SB_LINEDOWN ;
 int SB_LINELEFT ;
 int SB_LINERIGHT ;
 int SB_LINEUP ;
 int SB_PAGEDOWN ;
 int SB_PAGEUP ;
 int SB_RIGHT ;
 int SB_TOP ;
 int SB_VERT ;
 int VK_CONTROL ;
void OnKeyScroll(HWND hWnd, WPARAM wParam, LPARAM lParam, LPSCROLLSTATE state)
{

    switch (wParam)
    {
        case 128:
            OnScroll(hWnd, SB_VERT, MAKELONG(SB_LINEUP, 0), 5, state);
            break;

        case 135:
            OnScroll(hWnd, SB_VERT, MAKELONG(SB_LINEDOWN, 0), 5, state);
            break;

        case 132:
            OnScroll(hWnd, SB_HORZ, MAKELONG(SB_LINELEFT, 0), 5, state);
            break;

        case 129:
            OnScroll(hWnd, SB_HORZ, MAKELONG(SB_LINERIGHT, 0), 5, state);
            break;

        case 130:
            OnScroll(hWnd, SB_VERT, MAKELONG(SB_PAGEUP, 0), state->nPageY, state);
            break;

        case 131:
            OnScroll(hWnd, SB_VERT, MAKELONG(SB_PAGEDOWN, 0), state->nPageY, state);
            break;

        case 133:
        {
            OnScroll(hWnd, SB_HORZ, MAKELONG(SB_LEFT, 0), 0, state);
            if (GetKeyState(VK_CONTROL) & 0x8000)
                OnScroll(hWnd, SB_VERT, MAKELONG(SB_TOP, 0), 0, state);
            break;
        }

        case 134:
        {
            OnScroll(hWnd, SB_HORZ, MAKELONG(SB_RIGHT, 0), 0, state);
            if (GetKeyState(VK_CONTROL) & 0x8000)
                OnScroll(hWnd, SB_VERT, MAKELONG(SB_BOTTOM, 0), 0, state);
            break;
        }

        default:
            break;
    }
}
