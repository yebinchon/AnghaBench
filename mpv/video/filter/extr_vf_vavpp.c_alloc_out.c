
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int hw_pool; int av_device_ref; int queue; } ;
struct mp_image {int h; int w; TYPE_1__* hwctx; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_2__ AVHWFramesContext ;
typedef int AVFrame ;


 int IMGFMT_NV12 ;
 int IMGFMT_VAAPI ;
 int MP_ERR (struct mp_filter*,char*) ;
 int abort () ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 scalar_t__ av_hwframe_get_buffer (int ,int *,int ) ;
 struct mp_image* mp_image_from_av_frame (int *) ;
 int mp_image_set_size (struct mp_image*,int ,int ) ;
 struct mp_image* mp_refqueue_get_format (int ) ;
 int mp_update_av_hw_frames_pool (int *,int ,int ,int ,int,int) ;

__attribute__((used)) static struct mp_image *alloc_out(struct mp_filter *vf)
{
    struct priv *p = vf->priv;

    struct mp_image *fmt = mp_refqueue_get_format(p->queue);
    if (!fmt || !fmt->hwctx)
        return ((void*)0);

    AVHWFramesContext *hw_frames = (void *)fmt->hwctx->data;

    int src_w = hw_frames->width;
    int src_h = hw_frames->height;

    if (!mp_update_av_hw_frames_pool(&p->hw_pool, p->av_device_ref,
                                     IMGFMT_VAAPI, IMGFMT_NV12, src_w, src_h))
    {
        MP_ERR(vf, "Failed to create hw pool.\n");
        return ((void*)0);
    }

    AVFrame *av_frame = av_frame_alloc();
    if (!av_frame)
        abort();
    if (av_hwframe_get_buffer(p->hw_pool, av_frame, 0) < 0) {
        MP_ERR(vf, "Failed to allocate frame from hw pool.\n");
        av_frame_free(&av_frame);
        return ((void*)0);
    }
    struct mp_image *img = mp_image_from_av_frame(av_frame);
    av_frame_free(&av_frame);
    if (!img) {
        MP_ERR(vf, "Unknown error.\n");
        return ((void*)0);
    }
    mp_image_set_size(img, fmt->w, fmt->h);
    return img;
}
