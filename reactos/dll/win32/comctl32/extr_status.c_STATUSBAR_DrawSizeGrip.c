
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {void* bottom; void* top; void* right; void* left; } ;
struct TYPE_10__ {void* cy; void* cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ RECT ;
typedef TYPE_2__* LPRECT ;
typedef scalar_t__ HTHEME ;
typedef int HDC ;


 int DFCS_SCROLLSIZEGRIP ;
 int DFC_SCROLL ;
 int DrawFrameControl (int ,TYPE_2__*,int ,int ) ;
 int DrawThemeBackground (scalar_t__,int ,int ,int ,TYPE_2__*,int *) ;
 void* GetSystemMetrics (int ) ;
 int GetThemePartSize (scalar_t__,int ,int ,int ,TYPE_2__*,int ,TYPE_1__*) ;
 int SM_CXVSCROLL ;
 int SM_CYHSCROLL ;
 int SP_GRIPPER ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 int TS_DRAW ;
 void* max (void*,void*) ;
 int wine_dbgstr_rect (TYPE_2__*) ;

__attribute__((used)) static void
STATUSBAR_DrawSizeGrip (HTHEME theme, HDC hdc, LPRECT lpRect)
{
    RECT rc = *lpRect;

    TRACE("draw size grip %s\n", wine_dbgstr_rect(lpRect));

    if (theme)
    {
        SIZE gripperSize;
        if (SUCCEEDED (GetThemePartSize (theme, hdc, SP_GRIPPER, 0, lpRect,
            TS_DRAW, &gripperSize)))
        {
            rc.left = rc.right - gripperSize.cx;
            rc.top = rc.bottom - gripperSize.cy;
            if (SUCCEEDED (DrawThemeBackground(theme, hdc, SP_GRIPPER, 0, &rc, ((void*)0))))
                return;
        }
    }

    rc.left = max( rc.left, rc.right - GetSystemMetrics(SM_CXVSCROLL) - 1 );
    rc.top = max( rc.top, rc.bottom - GetSystemMetrics(SM_CYHSCROLL) - 1 );
    DrawFrameControl( hdc, &rc, DFC_SCROLL, DFCS_SCROLLSIZEGRIP );
}
