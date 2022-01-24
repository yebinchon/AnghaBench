#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  av_device_ctx; } ;
struct mp_stream_info {int /*<<< orphan*/  hwdec_devs; } ;
struct mp_hwupload {int hw_imgfmt; int num_fmts; int num_upload_fmts; int* fmt_upload_index; int* fmt_upload_num; int /*<<< orphan*/  upload_fmts; TYPE_2__* f; int /*<<< orphan*/  fmts; } ;
struct mp_hwdec_ctx {int hw_imgfmt; int /*<<< orphan*/  av_device_ref; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_9__ {struct priv* priv; } ;
struct TYPE_8__ {scalar_t__* valid_hw_formats; scalar_t__* valid_sw_formats; } ;
typedef  TYPE_1__ AVHWFramesConstraints ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  AV_HWFRAME_TRANSFER_DIRECTION_TO ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int**,int /*<<< orphan*/ ) ; 
 struct mp_hwdec_ctx* FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int) ; 
 struct mp_stream_info* FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (struct mp_hwdec_ctx*,int,int) ; 

__attribute__((used)) static bool FUNC18(struct mp_hwupload *u, int hw_imgfmt)
{
    struct priv *p = u->f->priv;

    u->hw_imgfmt = hw_imgfmt;
    u->num_fmts = 0;
    u->num_upload_fmts = 0;

    struct mp_stream_info *info = FUNC13(u->f);
    if (!info || !info->hwdec_devs) {
        FUNC0(u->f, "no hw context\n");
        return false;
    }

    struct mp_hwdec_ctx *ctx = NULL;
    AVHWFramesConstraints *cstr = NULL;

    for (int n = 0; ; n++) {
        struct mp_hwdec_ctx *cur = FUNC11(info->hwdec_devs, n);
        if (!cur)
            break;
        if (!cur->av_device_ref)
            continue;
        cstr = FUNC8(cur->av_device_ref, NULL);
        if (!cstr)
            continue;
        bool found = false;
        for (int i = 0; cstr->valid_hw_formats &&
                        cstr->valid_hw_formats[i] != AV_PIX_FMT_NONE; i++)
        {
            found |= cstr->valid_hw_formats[i] == FUNC12(hw_imgfmt);
        }
        if (found && (!cur->hw_imgfmt || cur->hw_imgfmt == hw_imgfmt)) {
            ctx = cur;
            break;
        }
        FUNC9(&cstr);
    }

    if (!ctx) {
        FUNC0(u->f, "no support for this hw format\n");
        return false;
    }

    // Probe for supported formats. This is very roundabout, because the
    // hwcontext API does not give us this information directly. We resort to
    // creating temporary AVHWFramesContexts in order to retrieve the list of
    // supported formats. This should be relatively cheap as we don't create
    // any real frames (although some backends do for probing info).

    for (int n = 0; cstr->valid_sw_formats &&
                    cstr->valid_sw_formats[n] != AV_PIX_FMT_NONE; n++)
    {
        int imgfmt = FUNC16(cstr->valid_sw_formats[n]);
        if (!imgfmt)
            continue;

        FUNC3(u->f, "looking at format %s\n", FUNC14(imgfmt));

        // Creates an AVHWFramesContexts with the given parameters.
        AVBufferRef *frames = NULL;
        if (!FUNC15(&frames, ctx->av_device_ref,
                                        hw_imgfmt, imgfmt, 128, 128))
        {
            FUNC4(u->f, "failed to allocate pool\n");
            continue;
        }

        enum AVPixelFormat *fmts;
        if (FUNC10(frames,
                            AV_HWFRAME_TRANSFER_DIRECTION_TO, &fmts, 0) >= 0)
        {
            int index = u->num_fmts;
            FUNC1(p, u->fmts, u->num_fmts, imgfmt);
            FUNC2(p, u->fmt_upload_index, index);
            FUNC2(p, u->fmt_upload_num, index);

            u->fmt_upload_index[index] = u->num_upload_fmts;

            for (int i = 0; fmts[i] != AV_PIX_FMT_NONE; i++) {
                int fmt = FUNC16(fmts[i]);
                if (!fmt)
                    continue;
                FUNC3(u->f, "supports %s\n", FUNC14(fmt));
                if (FUNC17(ctx, hw_imgfmt, fmt))
                    FUNC1(p, u->upload_fmts, u->num_upload_fmts, fmt);
            }

            u->fmt_upload_num[index] =
                u->num_upload_fmts - u->fmt_upload_index[index];

            FUNC7(fmts);
        }

        FUNC6(&frames);
    }

    p->av_device_ctx = FUNC5(ctx->av_device_ref);
    if (!p->av_device_ctx)
        return false;

    return u->num_upload_fmts > 0;
}