
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_wayland_output {struct vo_wayland_output* model; struct vo_wayland_output* make; int link; int id; int wl; } ;


 int MP_VERBOSE (int ,char*,struct vo_wayland_output*,struct vo_wayland_output*,int ) ;
 int talloc_free (struct vo_wayland_output*) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void remove_output(struct vo_wayland_output *out)
{
    if (!out)
        return;

    MP_VERBOSE(out->wl, "Deregistering output %s %s (0x%x)\n", out->make,
               out->model, out->id);
    wl_list_remove(&out->link);
    talloc_free(out->make);
    talloc_free(out->model);
    talloc_free(out);
    return;
}
