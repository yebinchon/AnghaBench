
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int pending_vo_events; int winrc; } ;
struct vo {scalar_t__ dwidth; scalar_t__ dheight; struct vo_x11_state* x11; } ;


 scalar_t__ RC_H (int ) ;
 scalar_t__ RC_W (int ) ;
 int VO_EVENT_RESIZE ;

__attribute__((used)) static void update_vo_size(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    if (RC_W(x11->winrc) != vo->dwidth || RC_H(x11->winrc) != vo->dheight) {
        vo->dwidth = RC_W(x11->winrc);
        vo->dheight = RC_H(x11->winrc);
        x11->pending_vo_events |= VO_EVENT_RESIZE;
    }
}
