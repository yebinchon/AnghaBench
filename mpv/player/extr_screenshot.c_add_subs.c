
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_osd_res {int dummy; } ;
struct mp_image {int params; } ;
struct MPContext {int video_pts; int osd; } ;


 int OSD_DRAW_SUB_ONLY ;
 int osd_draw_on_image (int ,struct mp_osd_res,int ,int ,struct mp_image*) ;
 struct mp_osd_res osd_res_from_image_params (int *) ;

__attribute__((used)) static void add_subs(struct MPContext *mpctx, struct mp_image *image)
{
    struct mp_osd_res res = osd_res_from_image_params(&image->params);
    osd_draw_on_image(mpctx->osd, res, mpctx->video_pts,
                      OSD_DRAW_SUB_ONLY, image);
}
