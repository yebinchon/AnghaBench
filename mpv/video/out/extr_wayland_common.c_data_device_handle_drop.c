
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_data_device {int dummy; } ;
struct vo_wayland_state {int dnd_fd; int dnd_mime_type; int dnd_offer; } ;


 int MP_ERR (struct vo_wayland_state*,char*) ;
 int MP_VERBOSE (struct vo_wayland_state*,char*,int ) ;
 int O_CLOEXEC ;
 int close (int) ;
 int pipe2 (int*,int ) ;
 int wl_data_offer_receive (int ,int ,int) ;

__attribute__((used)) static void data_device_handle_drop(void *data, struct wl_data_device *wl_ddev)
{
    struct vo_wayland_state *wl = data;

    int pipefd[2];

    if (pipe2(pipefd, O_CLOEXEC) == -1) {
        MP_ERR(wl, "Failed to create dnd pipe!\n");
        return;
    }

    MP_VERBOSE(wl, "Receiving DND offer with mime %s\n", wl->dnd_mime_type);

    wl_data_offer_receive(wl->dnd_offer, wl->dnd_mime_type, pipefd[1]);
    close(pipefd[1]);

    wl->dnd_fd = pipefd[0];
}
