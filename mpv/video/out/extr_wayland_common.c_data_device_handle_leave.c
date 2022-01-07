
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_data_device {int dummy; } ;
struct vo_wayland_state {int dnd_fd; scalar_t__ dnd_mime_score; int * dnd_mime_type; int * dnd_offer; } ;


 int MP_VERBOSE (struct vo_wayland_state*,char*,int *) ;
 int talloc_free (int *) ;
 int wl_data_offer_destroy (int *) ;

__attribute__((used)) static void data_device_handle_leave(void *data, struct wl_data_device *wl_ddev)
{
    struct vo_wayland_state *wl = data;

    if (wl->dnd_offer) {
        if (wl->dnd_fd != -1)
            return;
        wl_data_offer_destroy(wl->dnd_offer);
        wl->dnd_offer = ((void*)0);
    }

    MP_VERBOSE(wl, "Releasing DND offer with mime type %s\n", wl->dnd_mime_type);

    talloc_free(wl->dnd_mime_type);
    wl->dnd_mime_type = ((void*)0);
    wl->dnd_mime_score = 0;
}
