
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo_frame {int member_0; } ;
struct vo {struct priv* priv; } ;
struct ra_fbo {int flip; int tex; } ;
struct TYPE_3__ {int ra; } ;
struct TYPE_4__ {int h; int w; } ;
struct priv {int skip_osd; TYPE_1__ egl; int gl_video; int osd_pts; TYPE_2__ osd_res; int enable_osd; } ;


 int MP_STATS (struct vo*,char*) ;
 int RENDER_FRAME_DEF ;
 int gl_video_check_osd_change (int ,TYPE_2__*,int ) ;
 int gl_video_render_frame (int ,struct vo_frame*,struct ra_fbo,int ) ;
 int gl_video_set_osd_pts (int ,int ) ;
 int ra_create_wrapped_fb (int ,int ,int ,int ) ;
 int ra_tex_free (int ,int *) ;

__attribute__((used)) static void update_osd(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (!p->enable_osd)
        return;

    if (!gl_video_check_osd_change(p->gl_video, &p->osd_res, p->osd_pts)) {
        p->skip_osd = 1;
        return;
    }

    MP_STATS(vo, "start rpi_osd");

    struct vo_frame frame = {0};
    struct ra_fbo target = {
        .tex = ra_create_wrapped_fb(p->egl.ra, 0, p->osd_res.w, p->osd_res.h),
        .flip = 1,
    };
    gl_video_set_osd_pts(p->gl_video, p->osd_pts);
    gl_video_render_frame(p->gl_video, &frame, target, RENDER_FRAME_DEF);
    ra_tex_free(p->egl.ra, &target.tex);

    MP_STATS(vo, "stop rpi_osd");
}
