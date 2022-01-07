
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_output {int dummy; } ;
struct vo_wayland_output {scalar_t__ scale; int wl; } ;
typedef scalar_t__ int32_t ;


 int MP_ERR (int ,char*) ;

__attribute__((used)) static void output_handle_scale(void* data, struct wl_output *wl_output,
                                int32_t factor)
{
    struct vo_wayland_output *output = data;
    if (!factor) {
        MP_ERR(output->wl, "Invalid output scale given by the compositor!\n");
        return;
    }
    output->scale = factor;
}
