
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ra_tex_params {int dimensions; int render_src; int src_linear; int initial_data; struct ra_format const* format; int d; int h; int w; } ;
struct ra_format {int dummy; } ;
struct lut3d {int * size; int data; } ;
struct TYPE_7__ {TYPE_1__* mpi; } ;
struct gl_video {int use_lut_3d; int * lut_3d_size; TYPE_3__* ra; int lut_3d_texture; int cms; TYPE_2__ image; } ;
struct AVBufferRef {int dummy; } ;
typedef enum mp_csp_trc { ____Placeholder_mp_csp_trc } mp_csp_trc ;
typedef enum mp_csp_prim { ____Placeholder_mp_csp_prim } mp_csp_prim ;
struct TYPE_8__ {int caps; } ;
struct TYPE_6__ {struct AVBufferRef* icc_profile; } ;


 int MP_WARN (struct gl_video*,char*) ;
 int RA_CAP_TEX_3D ;
 int debug_check_gl (struct gl_video*,char*) ;
 int gl_lcms_get_lut3d (int ,struct lut3d**,int,int,struct AVBufferRef*) ;
 int gl_lcms_has_changed (int ,int,int,struct AVBufferRef*) ;
 struct ra_format* ra_find_unorm_format (TYPE_3__*,int,int) ;
 int ra_tex_create (TYPE_3__*,struct ra_tex_params*) ;
 int ra_tex_free (TYPE_3__*,int *) ;
 int talloc_free (struct lut3d*) ;

__attribute__((used)) static bool gl_video_get_lut3d(struct gl_video *p, enum mp_csp_prim prim,
                               enum mp_csp_trc trc)
{
    if (!p->use_lut_3d)
        return 0;

    struct AVBufferRef *icc = ((void*)0);
    if (p->image.mpi)
        icc = p->image.mpi->icc_profile;

    if (p->lut_3d_texture && !gl_lcms_has_changed(p->cms, prim, trc, icc))
        return 1;



    const struct ra_format *fmt = ra_find_unorm_format(p->ra, 2, 4);
    if (!fmt || !(p->ra->caps & RA_CAP_TEX_3D)) {
        p->use_lut_3d = 0;
        MP_WARN(p, "Disabling color management (no RGBA16 3D textures).\n");
        return 0;
    }

    struct lut3d *lut3d = ((void*)0);
    if (!fmt || !gl_lcms_get_lut3d(p->cms, &lut3d, prim, trc, icc) || !lut3d) {
        p->use_lut_3d = 0;
        return 0;
    }

    ra_tex_free(p->ra, &p->lut_3d_texture);

    struct ra_tex_params params = {
        .dimensions = 3,
        .w = lut3d->size[0],
        .h = lut3d->size[1],
        .d = lut3d->size[2],
        .format = fmt,
        .render_src = 1,
        .src_linear = 1,
        .initial_data = lut3d->data,
    };
    p->lut_3d_texture = ra_tex_create(p->ra, &params);

    debug_check_gl(p, "after 3d lut creation");

    for (int i = 0; i < 3; i++)
        p->lut_3d_size[i] = lut3d->size[i];

    talloc_free(lut3d);

    return 1;
}
