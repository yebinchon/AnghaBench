
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_wayland_state {int xkb_context; } ;


 int MP_ERR (struct vo_wayland_state*,char*) ;
 int XKB_CONTEXT_NO_FLAGS ;
 int xkb_context_new (int ) ;

__attribute__((used)) static bool create_input(struct vo_wayland_state *wl)
{
    wl->xkb_context = xkb_context_new(XKB_CONTEXT_NO_FLAGS);

    if (!wl->xkb_context) {
        MP_ERR(wl, "failed to initialize input: check xkbcommon\n");
        return 1;
    }

    return 0;
}
