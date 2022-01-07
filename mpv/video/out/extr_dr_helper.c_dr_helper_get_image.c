
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {int dummy; } ;
struct get_image_cmd {int imgfmt; int w; int h; int stride_align; struct mp_image* res; struct dr_helper* dr; } ;
struct dr_helper {int dispatch; } ;


 int mp_dispatch_run (int ,int ,struct get_image_cmd*) ;
 int sync_get_image ;

struct mp_image *dr_helper_get_image(struct dr_helper *dr, int imgfmt,
                                     int w, int h, int stride_align)
{
    struct get_image_cmd cmd = {
        .dr = dr,
        .imgfmt = imgfmt, .w = w, .h = h, .stride_align = stride_align,
    };
    mp_dispatch_run(dr->dispatch, sync_get_image, &cmd);
    return cmd.res;
}
