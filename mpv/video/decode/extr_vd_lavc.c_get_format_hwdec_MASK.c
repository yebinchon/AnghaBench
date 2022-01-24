#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int const pix_fmt; } ;
struct TYPE_4__ {int hwdec_request_reinit; int hwdec_failed; TYPE_1__ hwdec; int /*<<< orphan*/  use_hwdec; } ;
typedef  TYPE_2__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_2__* priv; } ;
struct AVCodecContext {int /*<<< orphan*/  profile; int /*<<< orphan*/  codec_id; struct mp_filter* opaque; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int const AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int const) ; 
 int FUNC3 (struct AVCodecContext*,int const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mp_filter*,int const) ; 

__attribute__((used)) static enum AVPixelFormat FUNC6(struct AVCodecContext *avctx,
                                           const enum AVPixelFormat *fmt)
{
    struct mp_filter *vd = avctx->opaque;
    vd_ffmpeg_ctx *ctx = vd->priv;

    FUNC0(vd, "Pixel formats supported by decoder:");
    for (int i = 0; fmt[i] != AV_PIX_FMT_NONE; i++)
        FUNC0(vd, " %s", FUNC2(fmt[i]));
    FUNC0(vd, "\n");

    const char *profile = FUNC4(avctx->codec_id, avctx->profile);
    FUNC0(vd, "Codec profile: %s (0x%x)\n", profile ? profile : "unknown",
               avctx->profile);

    FUNC1(ctx->use_hwdec);

    ctx->hwdec_request_reinit |= ctx->hwdec_failed;
    ctx->hwdec_failed = false;

    enum AVPixelFormat select = AV_PIX_FMT_NONE;
    for (int i = 0; fmt[i] != AV_PIX_FMT_NONE; i++) {
        if (ctx->hwdec.pix_fmt == fmt[i]) {
            if (FUNC5(vd, fmt[i]) < 0)
                break;
            select = fmt[i];
            break;
        }
    }

    if (select == AV_PIX_FMT_NONE) {
        ctx->hwdec_failed = true;
        select = FUNC3(avctx, fmt);
    }

    const char *name = FUNC2(select);
    FUNC0(vd, "Requesting pixfmt '%s' from decoder.\n", name ? name : "-");
    return select;
}