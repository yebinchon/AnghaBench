
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_data_device {int dummy; } ;
struct vo_wayland_state {int dnd_mime_type; int dnd_offer; } ;


 int wl_data_offer_accept (int ,int ,int ) ;

__attribute__((used)) static void data_device_handle_motion(void *data, struct wl_data_device *wl_ddev,
                                      uint32_t time, wl_fixed_t x, wl_fixed_t y)
{
    struct vo_wayland_state *wl = data;

    wl_data_offer_accept(wl->dnd_offer, time, wl->dnd_mime_type);
}
