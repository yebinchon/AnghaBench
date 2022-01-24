#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct vo {struct priv* priv; } ;
struct priv {int shutdown; TYPE_5__* enc; } ;
struct TYPE_10__ {int /*<<< orphan*/  levels; int /*<<< orphan*/  space; } ;
struct mp_image_params {int w; int h; TYPE_1__ color; int /*<<< orphan*/  imgfmt; int /*<<< orphan*/  p_h; int /*<<< orphan*/  p_w; } ;
struct mp_image {struct mp_image_params params; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_14__ {TYPE_4__* encoder; } ;
struct TYPE_12__ {int num; int den; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int width; int height; int pix_fmt; int /*<<< orphan*/  time_base; TYPE_2__* codec; int /*<<< orphan*/  color_range; int /*<<< orphan*/  colorspace; TYPE_3__ sample_aspect_ratio; } ;
struct TYPE_11__ {TYPE_3__* supported_framerates; } ;
typedef  TYPE_3__ AVRational ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_3__,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,struct vo*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_ready ; 

__attribute__((used)) static int FUNC10(struct vo *vo, struct mp_image *img)
{
    struct priv *vc = vo->priv;
    AVCodecContext *encoder = vc->enc->encoder;

    struct mp_image_params *params = &img->params;
    enum AVPixelFormat pix_fmt = FUNC6(params->imgfmt);
    AVRational aspect = {params->p_w, params->p_h};
    int width = params->w;
    int height = params->h;

    if (vc->shutdown)
        return -1;

    if (FUNC4(encoder)) {
        if (width == encoder->width && height == encoder->height &&
            pix_fmt == encoder->pix_fmt)
        {
            // consider these changes not critical
            FUNC0(vo, "Ignoring mid-stream parameter changes!\n");
            return 0;
        }

        /* FIXME Is it possible with raw video? */
        FUNC0(vo, "resolution changes not supported.\n");
        goto error;
    }

    // When we get here, this must be the first call to reconfigure(). Thus, we
    // can rely on no existing data in vc having been allocated yet.
    // Reason:
    // - Second calls after reconfigure() already failed once fail (due to the
    //   vc->shutdown check above).
    // - Second calls after reconfigure() already succeeded once return early
    //   (due to the avcodec_is_open() check above).

    if (pix_fmt == AV_PIX_FMT_NONE) {
        FUNC1(vo, "Format %s not supported by lavc.\n",
                 FUNC9(params->imgfmt));
        goto error;
    }

    encoder->sample_aspect_ratio = aspect;
    encoder->width = width;
    encoder->height = height;
    encoder->pix_fmt = pix_fmt;
    encoder->colorspace = FUNC8(params->color.space);
    encoder->color_range = FUNC7(params->color.levels);

    AVRational tb;

    // we want to handle:
    //      1/25
    //   1001/24000
    //   1001/30000
    // for this we would need 120000fps...
    // however, mpeg-4 only allows 16bit values
    // so let's take 1001/30000 out
    tb.num = 24000;
    tb.den = 1;

    const AVRational *rates = encoder->codec->supported_framerates;
    if (rates && rates[0].den)
        tb = rates[FUNC2(tb, rates)];

    encoder->time_base = FUNC3(tb);

    if (!FUNC5(vc->enc, on_ready, vo))
        goto error;

    return 0;

error:
    vc->shutdown = true;
    return -1;
}