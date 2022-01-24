#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_decoder {struct mp_filter* f; } ;
struct spdifContext {int use_dts_hd; scalar_t__ codec_id; struct mp_decoder public; int /*<<< orphan*/  pool; int /*<<< orphan*/  log; } ;
struct mp_filter {int /*<<< orphan*/  log; struct spdifContext* priv; } ;
struct mp_codec_params {int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  ad_spdif_filter ; 
 int /*<<< orphan*/  FUNC0 (struct spdifContext*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC3 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_filter*) ; 

__attribute__((used)) static struct mp_decoder *FUNC7(struct mp_filter *parent,
                                 struct mp_codec_params *codec,
                                 const char *decoder)
{
    struct mp_filter *da = FUNC3(parent, &ad_spdif_filter);
    if (!da)
        return NULL;

    FUNC2(da, MP_PIN_IN, "in");
    FUNC2(da, MP_PIN_OUT, "out");

    da->log = FUNC4(da, parent->log, NULL);

    struct spdifContext *spdif_ctx = da->priv;
    spdif_ctx->log = da->log;
    spdif_ctx->pool = FUNC0(spdif_ctx);
    spdif_ctx->public.f = da;

    if (FUNC5(decoder, "spdif_dts_hd") == 0)
        spdif_ctx->use_dts_hd = true;

    spdif_ctx->codec_id = FUNC1(codec->codec);


    if (spdif_ctx->codec_id == AV_CODEC_ID_NONE) {
        FUNC6(da);
        return NULL;
    }
    return &spdif_ctx->public;
}