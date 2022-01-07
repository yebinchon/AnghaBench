
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int osd; struct priv* priv; } ;
struct mp_rect {void* y0; void* x0; } ;
struct priv {struct mp_image* original_image; int osd; int sws; struct mp_rect src; int current_buf; } ;
struct TYPE_2__ {int align_y; int align_x; } ;
struct mp_image {int pts; int h; int w; TYPE_1__ fmt; } ;
typedef struct mp_image mp_image_t ;


 void* MP_ALIGN_DOWN (void*,int ) ;
 struct mp_image get_x_buffer (struct priv*,int ) ;
 int mp_image_clear (struct mp_image*,int ,int ,int ,int ) ;
 int mp_image_crop_rc (struct mp_image*,struct mp_rect) ;
 int mp_sws_scale (int ,struct mp_image*,struct mp_image*) ;
 int osd_draw_on_image (int ,int ,int ,int ,struct mp_image*) ;
 int talloc_free (struct mp_image*) ;
 int wait_for_completion (struct vo*,int) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    struct priv *p = vo->priv;

    wait_for_completion(vo, 1);

    struct mp_image img = get_x_buffer(p, p->current_buf);

    if (mpi) {
        struct mp_image src = *mpi;
        struct mp_rect src_rc = p->src;
        src_rc.x0 = MP_ALIGN_DOWN(src_rc.x0, src.fmt.align_x);
        src_rc.y0 = MP_ALIGN_DOWN(src_rc.y0, src.fmt.align_y);
        mp_image_crop_rc(&src, src_rc);

        mp_sws_scale(p->sws, &img, &src);
    } else {
        mp_image_clear(&img, 0, 0, img.w, img.h);
    }

    osd_draw_on_image(vo->osd, p->osd, mpi ? mpi->pts : 0, 0, &img);

    if (mpi != p->original_image) {
        talloc_free(p->original_image);
        p->original_image = mpi;
    }
}
