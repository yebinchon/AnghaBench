
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vaapi_subpic {int id; int dst_h; int dst_w; int dst_y; int dst_x; int src_h; int src_w; int src_y; int src_x; } ;
struct vaapi_osd_part {struct vaapi_subpic subpic; scalar_t__ active; } ;
struct TYPE_12__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_11__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_7__ {int space; } ;
struct TYPE_8__ {int w; int h; TYPE_1__ color; } ;
struct priv {int scaling; int display; struct vaapi_osd_part* osd_parts; TYPE_6__ dst_rect; TYPE_5__ src_rect; TYPE_4__* vo; TYPE_2__ image_params; scalar_t__ osd_screen; struct mp_image* black_surface; int pool; } ;
struct mp_image {int dummy; } ;
typedef scalar_t__ VASurfaceID ;
typedef int VAStatus ;
struct TYPE_10__ {TYPE_3__* x11; } ;
struct TYPE_9__ {int window; } ;


 int CHECK_VA_STATUS (struct priv*,char*) ;
 int IMGFMT_420P ;
 int IMGFMT_VAAPI ;
 int MAX_OSD_PARTS ;
 int VA_FRAME_PICTURE ;
 scalar_t__ VA_INVALID_ID ;
 int VA_SUBPICTURE_DESTINATION_IS_SCREEN_COORD ;
 struct mp_image* mp_image_alloc (int,int,int) ;
 int mp_image_clear (struct mp_image*,int ,int ,int,int) ;
 struct mp_image* mp_image_pool_get (int ,int ,int,int) ;
 int mp_image_unrefp (struct mp_image**) ;
 int talloc_free (struct mp_image*) ;
 int vaAssociateSubpicture (int ,int ,scalar_t__*,int,int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int vaDeassociateSubpicture (int ,int ,scalar_t__*,int) ;
 int vaPutSurface (int ,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int ,int) ;
 int va_get_colorspace_flag (int ) ;
 scalar_t__ va_surface_id (struct mp_image*) ;
 scalar_t__ va_surface_upload (struct priv*,struct mp_image*,struct mp_image*) ;

__attribute__((used)) static bool render_to_screen(struct priv *p, struct mp_image *mpi)
{
    VAStatus status;

    VASurfaceID surface = va_surface_id(mpi);
    if (surface == VA_INVALID_ID) {
        if (!p->black_surface) {
            int w = p->image_params.w, h = p->image_params.h;

            int fmt = IMGFMT_420P;
            p->black_surface = mp_image_pool_get(p->pool, IMGFMT_VAAPI, w, h);
            if (p->black_surface) {
                struct mp_image *img = mp_image_alloc(fmt, w, h);
                if (img) {
                    mp_image_clear(img, 0, 0, w, h);
                    if (va_surface_upload(p, p->black_surface, img) < 0)
                        mp_image_unrefp(&p->black_surface);
                    talloc_free(img);
                }
            }
        }
        surface = va_surface_id(p->black_surface);
    }

    if (surface == VA_INVALID_ID)
        return 0;

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct vaapi_osd_part *part = &p->osd_parts[n];
        if (part->active) {
            struct vaapi_subpic *sp = &part->subpic;
            int flags = 0;
            if (p->osd_screen)
                flags |= VA_SUBPICTURE_DESTINATION_IS_SCREEN_COORD;
            status = vaAssociateSubpicture(p->display,
                                           sp->id, &surface, 1,
                                           sp->src_x, sp->src_y,
                                           sp->src_w, sp->src_h,
                                           sp->dst_x, sp->dst_y,
                                           sp->dst_w, sp->dst_h,
                                           flags);
            CHECK_VA_STATUS(p, "vaAssociateSubpicture()");
        }
    }

    int flags = va_get_colorspace_flag(p->image_params.color.space) |
                p->scaling | VA_FRAME_PICTURE;
    status = vaPutSurface(p->display,
                          surface,
                          p->vo->x11->window,
                          p->src_rect.x0,
                          p->src_rect.y0,
                          p->src_rect.x1 - p->src_rect.x0,
                          p->src_rect.y1 - p->src_rect.y0,
                          p->dst_rect.x0,
                          p->dst_rect.y0,
                          p->dst_rect.x1 - p->dst_rect.x0,
                          p->dst_rect.y1 - p->dst_rect.y0,
                          ((void*)0), 0,
                          flags);
    CHECK_VA_STATUS(p, "vaPutSurface()");

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct vaapi_osd_part *part = &p->osd_parts[n];
        if (part->active) {
            struct vaapi_subpic *sp = &part->subpic;
            status = vaDeassociateSubpicture(p->display, sp->id,
                                             &surface, 1);
            CHECK_VA_STATUS(p, "vaDeassociateSubpicture()");
        }
    }

    return 1;
}
