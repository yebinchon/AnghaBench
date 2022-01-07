
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_data_offer {int dummy; } ;
struct wl_data_device {int dummy; } ;
struct vo_wayland_state {struct wl_data_offer* dnd_offer; } ;


 int data_offer_listener ;
 int wl_data_offer_add_listener (struct wl_data_offer*,int *,struct vo_wayland_state*) ;
 int wl_data_offer_destroy (struct wl_data_offer*) ;

__attribute__((used)) static void data_device_handle_data_offer(void *data, struct wl_data_device *wl_ddev,
                                          struct wl_data_offer *id)
{
    struct vo_wayland_state *wl = data;
    if (wl->dnd_offer)
        wl_data_offer_destroy(wl->dnd_offer);

    wl->dnd_offer = id;
    wl_data_offer_add_listener(id, &data_offer_listener, wl);
}
