#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mux_stream {void (* on_ready ) (void*) ;void* on_ready_ctx; TYPE_1__* st; int /*<<< orphan*/  encoder_timebase; } ;
struct encoder_stream_info {TYPE_2__* codecpar; int /*<<< orphan*/  timebase; } ;
struct encode_priv {int failed; int /*<<< orphan*/  muxer; } ;
struct encode_lavc_context {int /*<<< orphan*/  lock; struct encode_priv* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  codec_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  codecpar; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  time_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct encode_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mux_stream* FUNC4 (struct encode_lavc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct encode_lavc_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mux_stream *FUNC8(struct encode_lavc_context *ctx,
                                                 struct encoder_stream_info *info,
                                                 void (*on_ready)(void *ctx),
                                                 void *on_ready_ctx)
{
    struct encode_priv *p = ctx->priv;

    FUNC6(&ctx->lock);

    struct mux_stream *dst = FUNC4(ctx, info->codecpar->codec_type);
    if (!dst) {
        FUNC0(p, "Cannot add a stream at runtime.\n");
        p->failed = true;
        goto done;
    }
    if (dst->st) {
        // Possibly via --gapless-audio, or explicitly recreating AO/VO.
        FUNC0(p, "Encoder was reinitialized; this is not allowed.\n");
        p->failed = true;
        dst = NULL;
        goto done;
    }

    dst->st = FUNC3(p->muxer, NULL);
    FUNC1(dst->st);

    dst->encoder_timebase = info->timebase;
    dst->st->time_base = info->timebase; // lavf will change this on muxer init
    // Some muxers (e.g. Matroska one) expect the sample_aspect_ratio to be
    // set on the AVStream.
    if (info->codecpar->codec_type == AVMEDIA_TYPE_VIDEO)
        dst->st->sample_aspect_ratio = info->codecpar->sample_aspect_ratio;
    
    if (FUNC2(dst->st->codecpar, info->codecpar) < 0)
        FUNC1(0);

    dst->on_ready = on_ready;
    dst->on_ready_ctx = on_ready_ctx;

    FUNC5(ctx);

done:
    FUNC7(&ctx->lock);

    return dst;
}