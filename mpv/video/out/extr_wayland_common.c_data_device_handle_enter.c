
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_data_offer {int dummy; } ;
struct wl_data_device {int dummy; } ;
struct vo_wayland_state {int dnd_mime_type; struct wl_data_offer* dnd_offer; } ;


 int MP_FATAL (struct vo_wayland_state*,char*) ;
 int MP_VERBOSE (struct vo_wayland_state*,char*,int ) ;
 int WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY ;
 int WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE ;
 int wl_data_offer_accept (struct wl_data_offer*,int ,int ) ;
 int wl_data_offer_set_actions (struct wl_data_offer*,int,int) ;

__attribute__((used)) static void data_device_handle_enter(void *data, struct wl_data_device *wl_ddev,
                                     uint32_t serial, struct wl_surface *surface,
                                     wl_fixed_t x, wl_fixed_t y,
                                     struct wl_data_offer *id)
{
    struct vo_wayland_state *wl = data;
    if (wl->dnd_offer != id) {
        MP_FATAL(wl, "DND offer ID mismatch!\n");
        return;
    }

    wl_data_offer_set_actions(id, WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY |
                                  WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE,
                                  WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY);

    wl_data_offer_accept(id, serial, wl->dnd_mime_type);

    MP_VERBOSE(wl, "Accepting DND offer with mime type %s\n", wl->dnd_mime_type);
}
