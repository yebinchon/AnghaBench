
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ra_hwdec {struct priv_owner* priv; } ;
struct priv_owner {int* formats; TYPE_1__* ctx; } ;
struct mp_image {int params; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int sw_format; int width; int height; int format; } ;
struct TYPE_8__ {int av_device_ref; } ;
typedef TYPE_2__ AVHWFramesContext ;
typedef int AVFrame ;
typedef TYPE_3__ AVBufferRef ;


 int AV_PIX_FMT_VAAPI ;
 int MP_TARRAY_APPEND (struct priv_owner*,int*,int,int) ;
 int av_buffer_unref (TYPE_3__**) ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 TYPE_3__* av_hwframe_ctx_alloc (int ) ;
 scalar_t__ av_hwframe_ctx_init (TYPE_3__*) ;
 scalar_t__ av_hwframe_get_buffer (TYPE_3__*,int *,int ) ;
 struct mp_image* mp_image_from_av_frame (int *) ;
 int mp_image_params_valid (int *) ;
 int pixfmt2imgfmt (int) ;
 int talloc_free (struct mp_image*) ;
 scalar_t__ try_format_map (struct ra_hwdec*,struct mp_image*) ;

__attribute__((used)) static void try_format_pixfmt(struct ra_hwdec *hw, enum AVPixelFormat pixfmt)
{
    struct priv_owner *p = hw->priv;

    int mp_fmt = pixfmt2imgfmt(pixfmt);
    if (!mp_fmt)
        return;

    int num_formats = 0;
    for (int n = 0; p->formats && p->formats[n]; n++) {
        if (p->formats[n] == mp_fmt)
            return;
        num_formats += 1;
    }

    AVBufferRef *fref = ((void*)0);
    struct mp_image *s = ((void*)0);
    AVFrame *frame = ((void*)0);
    fref = av_hwframe_ctx_alloc(p->ctx->av_device_ref);
    if (!fref)
        goto err;
    AVHWFramesContext *fctx = (void *)fref->data;
    fctx->format = AV_PIX_FMT_VAAPI;
    fctx->sw_format = pixfmt;
    fctx->width = 128;
    fctx->height = 128;
    if (av_hwframe_ctx_init(fref) < 0)
        goto err;
    frame = av_frame_alloc();
    if (!frame)
        goto err;
    if (av_hwframe_get_buffer(fref, frame, 0) < 0)
        goto err;
    s = mp_image_from_av_frame(frame);
    if (!s || !mp_image_params_valid(&s->params))
        goto err;
    if (try_format_map(hw, s)) {
        MP_TARRAY_APPEND(p, p->formats, num_formats, mp_fmt);
        MP_TARRAY_APPEND(p, p->formats, num_formats, 0);
    }
err:
    talloc_free(s);
    av_frame_free(&frame);
    av_buffer_unref(&fref);
}
