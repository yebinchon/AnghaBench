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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vo_frame {int num_frames; struct mp_image** frames; scalar_t__ repeat; scalar_t__ redraw; } ;
struct vo {int /*<<< orphan*/  osd; int /*<<< orphan*/  params; struct priv* priv; } ;
struct priv {scalar_t__ shutdown; struct encoder_context* enc; } ;
struct mp_osd_res {int dummy; } ;
struct mp_image {double pts; } ;
struct encoder_context {TYPE_1__* options; TYPE_3__* encoder; struct encode_lavc_context* encode_lavc_ctx; } ;
struct encode_lavc_context {double discontinuity_pts_offset; double next_in_pts; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  global_quality; int /*<<< orphan*/  time_base; } ;
struct TYPE_8__ {int /*<<< orphan*/  quality; scalar_t__ pict_type; int /*<<< orphan*/  pts; } ;
struct TYPE_7__ {int /*<<< orphan*/  rawts; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,double) ; 
 int /*<<< orphan*/  OSD_DRAW_SUB_ONLY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct encoder_context*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct encoder_context*) ; 
 int FUNC7 (double) ; 
 TYPE_2__* FUNC8 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mp_osd_res,double,int /*<<< orphan*/ ,struct mp_image*) ; 
 struct mp_osd_res FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (double) ; 

__attribute__((used)) static void FUNC14(struct vo *vo, struct vo_frame *voframe)
{
    struct priv *vc = vo->priv;
    struct encoder_context *enc = vc->enc;
    struct encode_lavc_context *ectx = enc->encode_lavc_ctx;
    AVCodecContext *avc = enc->encoder;

    if (voframe->redraw || voframe->repeat || voframe->num_frames < 1)
        return;

    struct mp_image *mpi = voframe->frames[0];

    struct mp_osd_res dim = FUNC10(vo->params);
    FUNC9(vo->osd, dim, mpi->pts, OSD_DRAW_SUB_ONLY, mpi);

    if (vc->shutdown)
        return;

    // Lock for shared timestamp fields.
    FUNC11(&ectx->lock);

    double pts = mpi->pts;
    double outpts = pts;
    if (!enc->options->rawts) {
        // fix the discontinuity pts offset
        if (ectx->discontinuity_pts_offset == MP_NOPTS_VALUE) {
            ectx->discontinuity_pts_offset = ectx->next_in_pts - pts;
        } else if (FUNC7(pts + ectx->discontinuity_pts_offset -
                        ectx->next_in_pts) > 30)
        {
            FUNC0(vo, "detected an unexpected discontinuity (pts jumped by "
                    "%f seconds)\n",
                    pts + ectx->discontinuity_pts_offset - ectx->next_in_pts);
            ectx->discontinuity_pts_offset = ectx->next_in_pts - pts;
        }

        outpts = pts + ectx->discontinuity_pts_offset;
    }

    outpts += FUNC6(enc);

    if (!enc->options->rawts) {
        // calculate expected pts of next video frame
        double timeunit = FUNC4(avc->time_base);
        double expected_next_pts = pts + timeunit;
        // set next allowed output pts value
        double nextpts = expected_next_pts + ectx->discontinuity_pts_offset;
        if (nextpts > ectx->next_in_pts)
            ectx->next_in_pts = nextpts;
    }

    FUNC12(&ectx->lock);

    AVFrame *frame = FUNC8(mpi);
    if (!frame)
        FUNC1();

    frame->pts = FUNC13(outpts * FUNC4(FUNC3(avc->time_base)));
    frame->pict_type = 0; // keep this at unknown/undefined
    frame->quality = avc->global_quality;
    FUNC5(enc, frame);
    FUNC2(&frame);
}