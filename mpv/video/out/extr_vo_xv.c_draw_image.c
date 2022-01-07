
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct xvctx {TYPE_1__* original_image; int current_buf; scalar_t__ num_buffers; } ;
struct vo {int osd; int params; struct xvctx* priv; } ;
struct mp_osd_res {int dummy; } ;
struct mp_image {int h; int w; } ;
struct TYPE_5__ {int pts; } ;
typedef TYPE_1__ mp_image_t ;


 struct mp_image get_xv_buffer (struct vo*,int ) ;
 int mp_image_clear (struct mp_image*,int ,int ,int ,int ) ;
 int mp_image_copy (struct mp_image*,TYPE_1__*) ;
 int osd_draw_on_image (int ,struct mp_osd_res,int ,int ,struct mp_image*) ;
 struct mp_osd_res osd_res_from_image_params (int ) ;
 int talloc_free (TYPE_1__*) ;
 int wait_for_completion (struct vo*,scalar_t__) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    struct xvctx *ctx = vo->priv;

    wait_for_completion(vo, ctx->num_buffers - 1);

    struct mp_image xv_buffer = get_xv_buffer(vo, ctx->current_buf);
    if (mpi) {
        mp_image_copy(&xv_buffer, mpi);
    } else {
        mp_image_clear(&xv_buffer, 0, 0, xv_buffer.w, xv_buffer.h);
    }

    struct mp_osd_res res = osd_res_from_image_params(vo->params);
    osd_draw_on_image(vo->osd, res, mpi ? mpi->pts : 0, 0, &xv_buffer);

    if (mpi != ctx->original_image) {
        talloc_free(ctx->original_image);
        ctx->original_image = mpi;
    }
}
