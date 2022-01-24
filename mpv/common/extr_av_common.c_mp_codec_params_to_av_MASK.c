#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  num; } ;
struct mp_codec_params {TYPE_3__ channels; int /*<<< orphan*/  block_align; int /*<<< orphan*/  bitrate; int /*<<< orphan*/  samplerate; int /*<<< orphan*/  disp_h; int /*<<< orphan*/  disp_w; int /*<<< orphan*/  bits_per_coded_sample; int /*<<< orphan*/  extradata; scalar_t__ extradata_size; int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec; int /*<<< orphan*/  type; int /*<<< orphan*/  lav_codecpar; } ;
struct TYPE_8__ {int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  channels; int /*<<< orphan*/  block_align; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  bits_per_coded_sample; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

AVCodecParameters *FUNC9(struct mp_codec_params *c)
{
    AVCodecParameters *avp = FUNC1();
    if (!avp)
        return NULL;

    // If we have lavf demuxer params, they overwrite by definition any others.
    if (c->lav_codecpar) {
        if (FUNC2(avp, c->lav_codecpar) < 0)
            goto error;
        return avp;
    }

    avp->codec_type = FUNC8(c->type);
    avp->codec_id = FUNC7(c->codec);
    avp->codec_tag = c->codec_tag;
    if (c->extradata_size) {
        avp->extradata =
            FUNC0(c->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!avp->extradata)
            goto error;
        avp->extradata_size = c->extradata_size;
        FUNC4(avp->extradata, c->extradata, avp->extradata_size);
    }
    avp->bits_per_coded_sample = c->bits_per_coded_sample;

    // Video only
    avp->width = c->disp_w;
    avp->height = c->disp_h;

    // Audio only
    avp->sample_rate = c->samplerate;
    avp->bit_rate = c->bitrate;
    avp->block_align = c->block_align;
    avp->channels = c->channels.num;
    if (!FUNC5(&c->channels))
        avp->channel_layout = FUNC6(&c->channels);

    return avp;
error:
    FUNC3(&avp);
    return NULL;
}