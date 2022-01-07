
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int window_title; int window; } ;
struct vo {struct vo_x11_state* x11; } ;


 int XA (struct vo_x11_state*,int ) ;
 int XA_WM_ICON_NAME ;
 int XA_WM_NAME ;
 int _NET_WM_ICON_NAME ;
 int _NET_WM_NAME ;
 int vo_x11_set_property_string (struct vo*,int ,int ) ;
 int vo_x11_set_property_utf8 (struct vo*,int ,int ) ;

__attribute__((used)) static void vo_x11_update_window_title(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    if (!x11->window || !x11->window_title)
        return;

    vo_x11_set_property_string(vo, XA_WM_NAME, x11->window_title);
    vo_x11_set_property_string(vo, XA_WM_ICON_NAME, x11->window_title);
    vo_x11_set_property_utf8(vo, XA(x11, _NET_WM_NAME), x11->window_title);
    vo_x11_set_property_utf8(vo, XA(x11, _NET_WM_ICON_NAME), x11->window_title);
}
