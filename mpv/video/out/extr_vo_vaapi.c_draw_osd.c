
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {int osd; int params; struct priv* priv; } ;
struct mp_osd_res {int dummy; } ;
struct TYPE_3__ {int fourcc; } ;
struct priv {size_t output_surface; TYPE_2__* osd_parts; struct mp_osd_res screen_osd_res; scalar_t__ osd_screen; TYPE_1__ osd_format; struct mp_image** output_surfaces; } ;
struct mp_image {double pts; } ;
struct TYPE_4__ {int active; } ;


 int MAX_OSD_PARTS ;
 int draw_osd_cb ;
 int osd_draw (int ,struct mp_osd_res,double,int ,int ,int ,struct priv*) ;
 int osd_formats ;
 struct mp_osd_res osd_res_from_image_params (int ) ;

__attribute__((used)) static void draw_osd(struct vo *vo)
{
    struct priv *p = vo->priv;

    struct mp_image *cur = p->output_surfaces[p->output_surface];
    double pts = cur ? cur->pts : 0;

    if (!p->osd_format.fourcc)
        return;

    struct mp_osd_res vid_res = osd_res_from_image_params(vo->params);

    struct mp_osd_res *res;
    if (p->osd_screen) {
        res = &p->screen_osd_res;
    } else {
        res = &vid_res;
    }

    for (int n = 0; n < MAX_OSD_PARTS; n++)
        p->osd_parts[n].active = 0;
    osd_draw(vo->osd, *res, pts, 0, osd_formats, draw_osd_cb, p);
}
