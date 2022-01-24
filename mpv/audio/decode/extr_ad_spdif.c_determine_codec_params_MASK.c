#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct spdifContext {scalar_t__ codec_id; } ;
struct mp_filter {struct spdifContext* priv; } ;
struct TYPE_17__ {int profile; int sample_rate; } ;
struct TYPE_16__ {int /*<<< orphan*/  flags; } ;
struct TYPE_15__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVCodecParserContext ;
typedef  TYPE_3__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_DTS ; 
 int FF_PROFILE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  PARSER_FLAG_COMPLETE_FRAMES ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(struct mp_filter *da, AVPacket *pkt,
                                   int *out_profile, int *out_rate)
{
    struct spdifContext *spdif_ctx = da->priv;
    int profile = FF_PROFILE_UNKNOWN;
    AVCodecContext *ctx = NULL;
    AVFrame *frame = NULL;

    AVCodecParserContext *parser = FUNC4(spdif_ctx->codec_id);
    if (parser) {
        // Don't make it wait for the next frame.
        parser->flags |= PARSER_FLAG_COMPLETE_FRAMES;

        ctx = FUNC6(NULL);
        if (!ctx) {
            FUNC3(parser);
            goto done;
        }

        uint8_t *d = NULL;
        int s = 0;
        FUNC5(parser, ctx, &d, &s, pkt->data, pkt->size, 0, 0, 0);
        *out_profile = profile = ctx->profile;
        *out_rate = ctx->sample_rate;

        FUNC8(&ctx);
        FUNC3(parser);
    }

    if (profile != FF_PROFILE_UNKNOWN || spdif_ctx->codec_id != AV_CODEC_ID_DTS)
        return;

    AVCodec *codec = FUNC7(spdif_ctx->codec_id);
    if (!codec)
        goto done;

    frame = FUNC1();
    if (!frame)
        goto done;

    ctx = FUNC6(codec);
    if (!ctx)
        goto done;

    if (FUNC9(ctx, codec, NULL) < 0)
        goto done;

    if (FUNC11(ctx, pkt) < 0)
        goto done;
    if (FUNC10(ctx, frame) < 0)
        goto done;

    *out_profile = profile = ctx->profile;
    *out_rate = ctx->sample_rate;

done:
    FUNC2(&frame);
    FUNC8(&ctx);

    if (profile == FF_PROFILE_UNKNOWN)
        FUNC0(da, "Failed to parse codec profile.\n");
}