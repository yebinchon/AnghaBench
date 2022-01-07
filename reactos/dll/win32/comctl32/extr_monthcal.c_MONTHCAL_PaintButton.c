
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum nav_direction { ____Placeholder_nav_direction } nav_direction ;
struct TYPE_3__ {int status; int dwStyle; int titlebtnprev; int titlebtnnext; int hwndSelf; } ;
typedef int RECT ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef scalar_t__ HTHEME ;
typedef int HDC ;
typedef int BOOL ;
 int DFCS_INACTIVE ;
 int DFCS_PUSHED ;
 int DFCS_SCROLLLEFT ;
 int DFCS_SCROLLRIGHT ;
 int DFC_SCROLL ;
 int DIRECTION_FORWARD ;
 int DrawFrameControl (int ,int *,int ,int) ;
 int DrawThemeBackground (scalar_t__,int ,int ,int const,int *,int *) ;
 scalar_t__ GetWindowTheme (int ) ;
 int MC_NEXTPRESSED ;
 int MC_PREVPRESSED ;
 int SBP_ARROWBTN ;
 int WS_DISABLED ;

__attribute__((used)) static void MONTHCAL_PaintButton(MONTHCAL_INFO *infoPtr, HDC hdc, enum nav_direction button)
{
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);
    RECT *r = button == DIRECTION_FORWARD ? &infoPtr->titlebtnnext : &infoPtr->titlebtnprev;
    BOOL pressed = button == DIRECTION_FORWARD ? infoPtr->status & MC_NEXTPRESSED :
                                                 infoPtr->status & MC_PREVPRESSED;
    if (theme)
    {
        static const int states[] = {

            132, 131, 133,

            129, 128, 130
        };
        int stateNum = button == DIRECTION_FORWARD ? 3 : 0;
        if (pressed)
            stateNum += 1;
        else
        {
            if (infoPtr->dwStyle & WS_DISABLED) stateNum += 2;
        }
        DrawThemeBackground (theme, hdc, SBP_ARROWBTN, states[stateNum], r, ((void*)0));
    }
    else
    {
        int style = button == DIRECTION_FORWARD ? DFCS_SCROLLRIGHT : DFCS_SCROLLLEFT;
        if (pressed)
            style |= DFCS_PUSHED;
        else
        {
            if (infoPtr->dwStyle & WS_DISABLED) style |= DFCS_INACTIVE;
        }

        DrawFrameControl(hdc, r, DFC_SCROLL, style);
    }
}
