
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo_wayland_state {int surface; } ;
struct vo {int osd; int dheight; int dwidth; struct vo_wayland_state* wl; struct priv* priv; } ;
struct TYPE_6__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
struct TYPE_4__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
struct priv {int osd; int sws; TYPE_3__ dst; TYPE_1__ src; struct buffer* free_buffers; } ;
struct mp_rect {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
struct TYPE_5__ {int align_y; int align_x; } ;
struct mp_image {scalar_t__ w; scalar_t__ h; int pts; TYPE_2__ fmt; } ;
struct buffer {int * buffer; struct mp_image mpi; struct buffer* next; } ;


 int MPMAX (int ,int) ;
 void* MP_ALIGN_DOWN (scalar_t__,int ) ;
 struct buffer* buffer_create (struct vo*,int ,int ) ;
 int mp_image_clear (struct mp_image*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int mp_image_crop_rc (struct mp_image*,struct mp_rect) ;
 int mp_sws_scale (int ,struct mp_image*,struct mp_image*) ;
 int osd_draw_on_image (int ,int ,int ,int ,struct mp_image*) ;
 int talloc_free (struct mp_image*) ;
 int wl_surface_attach (int ,int *,int ,int ) ;

__attribute__((used)) static void draw_image(struct vo *vo, struct mp_image *src)
{
    struct priv *p = vo->priv;
    struct vo_wayland_state *wl = vo->wl;
    struct buffer *buf;

    buf = p->free_buffers;
    if (buf) {
        p->free_buffers = buf->next;
    } else {
        buf = buffer_create(vo, vo->dwidth, vo->dheight);
        if (!buf) {
            wl_surface_attach(wl->surface, ((void*)0), 0, 0);
            return;
        }
    }
    if (src) {
        struct mp_image dst = buf->mpi;
        struct mp_rect src_rc;
        struct mp_rect dst_rc;
        src_rc.x0 = MP_ALIGN_DOWN(p->src.x0, MPMAX(src->fmt.align_x, 4));
        src_rc.y0 = MP_ALIGN_DOWN(p->src.y0, MPMAX(src->fmt.align_y, 4));
        src_rc.x1 = p->src.x1 - (p->src.x0 - src_rc.x0);
        src_rc.y1 = p->src.y1 - (p->src.y0 - src_rc.y0);
        dst_rc.x0 = MP_ALIGN_DOWN(p->dst.x0, MPMAX(dst.fmt.align_x, 4));
        dst_rc.y0 = MP_ALIGN_DOWN(p->dst.y0, MPMAX(dst.fmt.align_y, 4));
        dst_rc.x1 = p->dst.x1 - (p->dst.x0 - dst_rc.x0);
        dst_rc.y1 = p->dst.y1 - (p->dst.y0 - dst_rc.y0);
        mp_image_crop_rc(src, src_rc);
        mp_image_crop_rc(&dst, dst_rc);
        mp_sws_scale(p->sws, &dst, src);
        if (dst_rc.y0 > 0)
            mp_image_clear(&buf->mpi, 0, 0, buf->mpi.w, dst_rc.y0);
        if (buf->mpi.h > dst_rc.y1)
            mp_image_clear(&buf->mpi, 0, dst_rc.y1, buf->mpi.w, buf->mpi.h);
        if (dst_rc.x0 > 0)
            mp_image_clear(&buf->mpi, 0, dst_rc.y0, dst_rc.x0, dst_rc.y1);
        if (buf->mpi.w > dst_rc.x1)
            mp_image_clear(&buf->mpi, dst_rc.x1, dst_rc.y0, buf->mpi.w, dst_rc.y1);
        osd_draw_on_image(vo->osd, p->osd, src->pts, 0, &buf->mpi);
    } else {
        mp_image_clear(&buf->mpi, 0, 0, buf->mpi.w, buf->mpi.h);
        osd_draw_on_image(vo->osd, p->osd, 0, 0, &buf->mpi);
    }
    talloc_free(src);
    wl_surface_attach(wl->surface, buf->buffer, 0, 0);
}
