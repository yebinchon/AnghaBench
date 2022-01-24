#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct priv {double aframecount; int aframesize; scalar_t__ lastpts; TYPE_4__* enc; int /*<<< orphan*/  worst_time_base; } ;
struct encode_lavc_context {double audio_pts_offset; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int num; } ;
struct ao {double samplerate; int sstride; TYPE_1__ channels; int /*<<< orphan*/  format; struct encode_lavc_context* encode_lavc_ctx; struct priv* priv; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {TYPE_3__* encoder; } ;
struct TYPE_10__ {int /*<<< orphan*/  global_quality; int /*<<< orphan*/  time_base; } ;
struct TYPE_9__ {int nb_samples; int* linesize; scalar_t__ pts; int /*<<< orphan*/  quality; void** extended_data; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 size_t AV_NUM_DATA_POINTERS ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (double) ; 

__attribute__((used)) static void FUNC13(struct ao *ao, double apts, void **data)
{
    struct priv *ac = ao->priv;
    struct encode_lavc_context *ectx = ao->encode_lavc_ctx;
    AVCodecContext *encoder = ac->enc->encoder;
    double realapts = ac->aframecount * (double) ac->aframesize /
                      ao->samplerate;

    ac->aframecount++;

    FUNC10(&ectx->lock);
    if (data)
        ectx->audio_pts_offset = realapts - apts;
    FUNC11(&ectx->lock);

    if(data) {
        AVFrame *frame = FUNC4();
        frame->format = FUNC2(ao->format);
        frame->nb_samples = ac->aframesize;

        size_t num_planes = FUNC1(ao->format) ? ao->channels.num : 1;
        FUNC3(num_planes <= AV_NUM_DATA_POINTERS);
        for (int n = 0; n < num_planes; n++)
            frame->extended_data[n] = data[n];

        frame->linesize[0] = frame->nb_samples * ao->sstride;

        frame->pts = FUNC12(apts * FUNC7(FUNC6(encoder->time_base)));

        int64_t frame_pts = FUNC8(frame->pts, encoder->time_base,
                                         ac->worst_time_base);
        if (ac->lastpts != AV_NOPTS_VALUE && frame_pts <= ac->lastpts) {
            // this indicates broken video
            // (video pts failing to increase fast enough to match audio)
            FUNC0(ao, "audio frame pts went backwards (%d <- %d), autofixed\n",
                    (int)frame->pts, (int)ac->lastpts);
            frame_pts = ac->lastpts + 1;
            frame->pts = FUNC8(frame_pts, ac->worst_time_base,
                                      encoder->time_base);
        }
        ac->lastpts = frame_pts;

        frame->quality = encoder->global_quality;
        FUNC9(ac->enc, frame);
        FUNC5(&frame);
    } else {
        FUNC9(ac->enc, NULL);
    }
}