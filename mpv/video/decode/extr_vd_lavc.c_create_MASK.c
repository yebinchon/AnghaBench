#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mp_decoder {int /*<<< orphan*/  control; struct mp_filter* f; } ;
struct TYPE_6__ {struct mp_decoder public; int /*<<< orphan*/  avctx; int /*<<< orphan*/  vo; int /*<<< orphan*/  hwdec_devs; int /*<<< orphan*/  dr_lock; void* dr_pool; void* hwdec_swpool; int /*<<< orphan*/  decoder; struct mp_codec_params* codec; TYPE_4__* opts_cache; int /*<<< orphan*/  opts; int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ vd_ffmpeg_ctx ;
struct mp_stream_info {int /*<<< orphan*/  dr_vo; int /*<<< orphan*/  hwdec_devs; } ;
struct mp_filter {int /*<<< orphan*/  global; int /*<<< orphan*/  log; TYPE_1__* priv; } ;
struct mp_codec_params {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  control ; 
 TYPE_4__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 struct mp_stream_info* FUNC3 (struct mp_filter*) ; 
 void* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_filter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  vd_lavc_conf ; 
 int /*<<< orphan*/  vd_lavc_filter ; 

__attribute__((used)) static struct mp_decoder *FUNC10(struct mp_filter *parent,
                                 struct mp_codec_params *codec,
                                 const char *decoder)
{
    struct mp_filter *vd = FUNC2(parent, &vd_lavc_filter);
    if (!vd)
        return NULL;

    FUNC1(vd, MP_PIN_IN, "in");
    FUNC1(vd, MP_PIN_OUT, "out");

    vd->log = FUNC5(vd, parent->log, NULL);

    vd_ffmpeg_ctx *ctx = vd->priv;
    ctx->log = vd->log;
    ctx->opts_cache = FUNC0(ctx, vd->global, &vd_lavc_conf);
    ctx->opts = ctx->opts_cache->opts;
    ctx->codec = codec;
    ctx->decoder = FUNC9(ctx, decoder);
    ctx->hwdec_swpool = FUNC4(ctx);
    ctx->dr_pool = FUNC4(ctx);

    ctx->public.f = vd;
    ctx->public.control = control;

    FUNC6(&ctx->dr_lock, NULL);

    // hwdec/DR
    struct mp_stream_info *info = FUNC3(vd);
    if (info) {
        ctx->hwdec_devs = info->hwdec_devs;
        ctx->vo = info->dr_vo;
    }

    FUNC7(vd);

    if (!ctx->avctx) {
        FUNC8(vd);
        return NULL;
    }
    return &ctx->public;
}