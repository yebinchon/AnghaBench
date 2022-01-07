
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct surface {int pts; int id; int tex; } ;
struct mp_image {int pts; } ;
struct TYPE_5__ {int gamma; } ;
struct TYPE_6__ {TYPE_2__ color; } ;
struct TYPE_4__ {int x1; int x0; int y1; int y0; } ;
struct gl_video {int use_linear; TYPE_3__ image_params; int sc; TYPE_1__ dst_rect; } ;


 int finish_pass_tex (struct gl_video*,int *,int,int) ;
 int pass_info_reset (struct gl_video*,int) ;
 int pass_linearize (int ,int ) ;
 int pass_render_frame (struct gl_video*,struct mp_image*,int ,int) ;

__attribute__((used)) static bool update_surface(struct gl_video *p, struct mp_image *mpi,
                           uint64_t id, struct surface *surf, int flags)
{
    int vp_w = p->dst_rect.x1 - p->dst_rect.x0,
        vp_h = p->dst_rect.y1 - p->dst_rect.y0;

    pass_info_reset(p, 0);
    if (!pass_render_frame(p, mpi, id, flags))
        return 0;




    if (!p->use_linear) {
        p->use_linear = 1;
        pass_linearize(p->sc, p->image_params.color.gamma);
    }

    finish_pass_tex(p, &surf->tex, vp_w, vp_h);
    surf->id = id;
    surf->pts = mpi->pts;
    return 1;
}
