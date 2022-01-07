
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_drag_icon_rect; } ;
typedef int HWND ;
typedef TYPE_1__ DRAGLISTDATA ;


 int DRAGLIST_TIMERID ;
 int GetParent (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int KillTimer (int ,int ) ;
 int ReleaseCapture () ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void DragList_EndDrag(HWND hwnd, DRAGLISTDATA * data)
{
    KillTimer(hwnd, DRAGLIST_TIMERID);
    ReleaseCapture();

    InvalidateRect(GetParent(hwnd), &data->last_drag_icon_rect, TRUE);

    memset(data, 0, sizeof(*data));
}
