
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wl_output {int dummy; } ;
struct TYPE_3__ {scalar_t__ y0; scalar_t__ x0; int y1; int x1; } ;
struct vo_wayland_output {int refresh_rate; int scale; int phys_height; TYPE_1__ geometry; int phys_width; int id; int model; int make; int wl; } ;


 int MP_VERBOSE (int ,char*,int ,int ,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int mp_rect_h (TYPE_1__) ;
 int mp_rect_w (TYPE_1__) ;

__attribute__((used)) static void output_handle_done(void* data, struct wl_output *wl_output)
{
    struct vo_wayland_output *o = data;

    o->geometry.x1 += o->geometry.x0;
    o->geometry.y1 += o->geometry.y0;

    MP_VERBOSE(o->wl, "Registered output %s %s (0x%x):\n"
               "\tx: %dpx, y: %dpx\n"
               "\tw: %dpx (%dmm), h: %dpx (%dmm)\n"
               "\tscale: %d\n"
               "\tHz: %f\n", o->make, o->model, o->id, o->geometry.x0,
               o->geometry.y0, mp_rect_w(o->geometry), o->phys_width,
               mp_rect_h(o->geometry), o->phys_height, o->scale, o->refresh_rate);
}
