
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vo_w32_state {int windowrc; int window; } ;
struct TYPE_3__ {int member_0; int member_1; int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef int LRESULT ;


 int GetSystemMetrics (int ) ;
 int HTBOTTOM ;
 int HTBOTTOMLEFT ;
 int HTBOTTOMRIGHT ;
 int HTCLIENT ;
 int HTLEFT ;
 int HTRIGHT ;
 int HTTOP ;
 int HTTOPLEFT ;
 int HTTOPRIGHT ;
 scalar_t__ IsMaximized (int ) ;
 int SM_CXBORDER ;
 int SM_CXFRAME ;
 int SM_CXPADDEDBORDER ;
 int ScreenToClient (int ,TYPE_1__*) ;
 int rect_h (int ) ;
 int rect_w (int ) ;

__attribute__((used)) static LRESULT borderless_nchittest(struct vo_w32_state *w32, int x, int y)
{
    if (IsMaximized(w32->window))
        return HTCLIENT;

    POINT mouse = { x, y };
    ScreenToClient(w32->window, &mouse);



    int frame_size = GetSystemMetrics(SM_CXFRAME) +
                     GetSystemMetrics(SM_CXPADDEDBORDER);

    int diagonal_width = frame_size * 2 + GetSystemMetrics(SM_CXBORDER);


    if (mouse.y < frame_size) {
        if (mouse.x < diagonal_width)
            return HTTOPLEFT;
        if (mouse.x >= rect_w(w32->windowrc) - diagonal_width)
            return HTTOPRIGHT;
        return HTTOP;
    }


    if (mouse.y >= rect_h(w32->windowrc) - frame_size) {
        if (mouse.x < diagonal_width)
            return HTBOTTOMLEFT;
        if (mouse.x >= rect_w(w32->windowrc) - diagonal_width)
            return HTBOTTOMRIGHT;
        return HTBOTTOM;
    }


    if (mouse.x < frame_size)
        return HTLEFT;
    if (mouse.x >= rect_w(w32->windowrc) - frame_size)
        return HTRIGHT;
    return HTCLIENT;
}
