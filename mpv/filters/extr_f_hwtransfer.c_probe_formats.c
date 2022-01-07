
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct priv {int av_device_ctx; } ;
struct mp_stream_info {int hwdec_devs; } ;
struct mp_hwupload {int hw_imgfmt; int num_fmts; int num_upload_fmts; int* fmt_upload_index; int* fmt_upload_num; int upload_fmts; TYPE_2__* f; int fmts; } ;
struct mp_hwdec_ctx {int hw_imgfmt; int av_device_ref; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_9__ {struct priv* priv; } ;
struct TYPE_8__ {scalar_t__* valid_hw_formats; scalar_t__* valid_sw_formats; } ;
typedef TYPE_1__ AVHWFramesConstraints ;
typedef int AVBufferRef ;


 int AV_HWFRAME_TRANSFER_DIRECTION_TO ;
 scalar_t__ AV_PIX_FMT_NONE ;
 int MP_ERR (TYPE_2__*,char*) ;
 int MP_TARRAY_APPEND (struct priv*,int ,int,int) ;
 int MP_TARRAY_GROW (struct priv*,int*,int) ;
 int MP_VERBOSE (TYPE_2__*,char*,int ) ;
 int MP_WARN (TYPE_2__*,char*) ;
 int av_buffer_ref (int ) ;
 int av_buffer_unref (int **) ;
 int av_free (int*) ;
 TYPE_1__* av_hwdevice_get_hwframe_constraints (int ,int *) ;
 int av_hwframe_constraints_free (TYPE_1__**) ;
 scalar_t__ av_hwframe_transfer_get_formats (int *,int ,int**,int ) ;
 struct mp_hwdec_ctx* hwdec_devices_get_n (int ,int) ;
 scalar_t__ imgfmt2pixfmt (int) ;
 struct mp_stream_info* mp_filter_find_stream_info (TYPE_2__*) ;
 int mp_imgfmt_to_name (int) ;
 int mp_update_av_hw_frames_pool (int **,int ,int,int,int,int) ;
 int pixfmt2imgfmt (int) ;
 scalar_t__ vo_supports (struct mp_hwdec_ctx*,int,int) ;

__attribute__((used)) static bool probe_formats(struct mp_hwupload *u, int hw_imgfmt)
{
    struct priv *p = u->f->priv;

    u->hw_imgfmt = hw_imgfmt;
    u->num_fmts = 0;
    u->num_upload_fmts = 0;

    struct mp_stream_info *info = mp_filter_find_stream_info(u->f);
    if (!info || !info->hwdec_devs) {
        MP_ERR(u->f, "no hw context\n");
        return 0;
    }

    struct mp_hwdec_ctx *ctx = ((void*)0);
    AVHWFramesConstraints *cstr = ((void*)0);

    for (int n = 0; ; n++) {
        struct mp_hwdec_ctx *cur = hwdec_devices_get_n(info->hwdec_devs, n);
        if (!cur)
            break;
        if (!cur->av_device_ref)
            continue;
        cstr = av_hwdevice_get_hwframe_constraints(cur->av_device_ref, ((void*)0));
        if (!cstr)
            continue;
        bool found = 0;
        for (int i = 0; cstr->valid_hw_formats &&
                        cstr->valid_hw_formats[i] != AV_PIX_FMT_NONE; i++)
        {
            found |= cstr->valid_hw_formats[i] == imgfmt2pixfmt(hw_imgfmt);
        }
        if (found && (!cur->hw_imgfmt || cur->hw_imgfmt == hw_imgfmt)) {
            ctx = cur;
            break;
        }
        av_hwframe_constraints_free(&cstr);
    }

    if (!ctx) {
        MP_ERR(u->f, "no support for this hw format\n");
        return 0;
    }







    for (int n = 0; cstr->valid_sw_formats &&
                    cstr->valid_sw_formats[n] != AV_PIX_FMT_NONE; n++)
    {
        int imgfmt = pixfmt2imgfmt(cstr->valid_sw_formats[n]);
        if (!imgfmt)
            continue;

        MP_VERBOSE(u->f, "looking at format %s\n", mp_imgfmt_to_name(imgfmt));


        AVBufferRef *frames = ((void*)0);
        if (!mp_update_av_hw_frames_pool(&frames, ctx->av_device_ref,
                                        hw_imgfmt, imgfmt, 128, 128))
        {
            MP_WARN(u->f, "failed to allocate pool\n");
            continue;
        }

        enum AVPixelFormat *fmts;
        if (av_hwframe_transfer_get_formats(frames,
                            AV_HWFRAME_TRANSFER_DIRECTION_TO, &fmts, 0) >= 0)
        {
            int index = u->num_fmts;
            MP_TARRAY_APPEND(p, u->fmts, u->num_fmts, imgfmt);
            MP_TARRAY_GROW(p, u->fmt_upload_index, index);
            MP_TARRAY_GROW(p, u->fmt_upload_num, index);

            u->fmt_upload_index[index] = u->num_upload_fmts;

            for (int i = 0; fmts[i] != AV_PIX_FMT_NONE; i++) {
                int fmt = pixfmt2imgfmt(fmts[i]);
                if (!fmt)
                    continue;
                MP_VERBOSE(u->f, "supports %s\n", mp_imgfmt_to_name(fmt));
                if (vo_supports(ctx, hw_imgfmt, fmt))
                    MP_TARRAY_APPEND(p, u->upload_fmts, u->num_upload_fmts, fmt);
            }

            u->fmt_upload_num[index] =
                u->num_upload_fmts - u->fmt_upload_index[index];

            av_free(fmts);
        }

        av_buffer_unref(&frames);
    }

    p->av_device_ctx = av_buffer_ref(ctx->av_device_ref);
    if (!p->av_device_ctx)
        return 0;

    return u->num_upload_fmts > 0;
}
