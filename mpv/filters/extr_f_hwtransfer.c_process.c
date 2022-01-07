
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_imgfmt; } ;
struct priv {int hw_pool; int last_sw_fmt; TYPE_1__ public; int av_device_ctx; } ;
struct mp_image {int w; int h; int imgfmt; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_filter {int * ppins; struct priv* priv; } ;


 scalar_t__ IMGFMT_IS_HWACCEL (int ) ;
 struct mp_frame MAKE_FRAME (scalar_t__,struct mp_image*) ;
 int MP_ERR (struct mp_filter*,char*) ;
 scalar_t__ MP_FRAME_VIDEO ;
 struct mp_image* mp_av_pool_image_hw_upload (int ,struct mp_image*) ;
 int mp_filter_internal_mark_failed (struct mp_filter*) ;
 scalar_t__ mp_frame_is_signaling (struct mp_frame) ;
 int mp_frame_unref (struct mp_frame*) ;
 int mp_pin_can_transfer_data (int ,int ) ;
 int mp_pin_in_write (int ,struct mp_frame) ;
 struct mp_frame mp_pin_out_read (int ) ;
 int mp_update_av_hw_frames_pool (int *,int ,int ,int ,int,int) ;
 int update_format_decision (struct priv*,int ) ;

__attribute__((used)) static void process(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (!mp_pin_can_transfer_data(f->ppins[1], f->ppins[0]))
        return;

    struct mp_frame frame = mp_pin_out_read(f->ppins[0]);
    if (mp_frame_is_signaling(frame)) {
        mp_pin_in_write(f->ppins[1], frame);
        return;
    }
    if (frame.type != MP_FRAME_VIDEO) {
        MP_ERR(f, "unsupported frame type\n");
        goto error;
    }
    struct mp_image *src = frame.data;


    if (IMGFMT_IS_HWACCEL(src->imgfmt)) {
        mp_pin_in_write(f->ppins[1], frame);
        return;
    }

    if (src->w % 2 || src->h % 2) {
        MP_ERR(f, "non-mod 2 input frames unsupported\n");
        goto error;
    }

    if (!update_format_decision(p, src->imgfmt)) {
        MP_ERR(f, "no hw upload format found\n");
        goto error;
    }

    if (!mp_update_av_hw_frames_pool(&p->hw_pool, p->av_device_ctx,
                                     p->public.hw_imgfmt, p->last_sw_fmt,
                                     src->w, src->h))
    {
        MP_ERR(f, "failed to create frame pool\n");
        goto error;
    }

    struct mp_image *dst = mp_av_pool_image_hw_upload(p->hw_pool, src);
    if (!dst)
        goto error;

    mp_frame_unref(&frame);
    mp_pin_in_write(f->ppins[1], MAKE_FRAME(MP_FRAME_VIDEO, dst));

    return;

error:
    mp_frame_unref(&frame);
    MP_ERR(f, "failed to upload frame\n");
    mp_filter_internal_mark_failed(f);
}
