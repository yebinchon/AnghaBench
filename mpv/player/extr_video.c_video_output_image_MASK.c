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
struct vo_chain {scalar_t__ is_coverart; TYPE_2__* filter; } ;
struct mp_image {double pts; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct MPContext {scalar_t__ video_status; double play_dir; scalar_t__ max_frames; double hrseek_pts; int hrseek_backstep; double playback_pts; struct mp_image* saved_frame; scalar_t__ hrseek_lastframe; int /*<<< orphan*/  video_out; scalar_t__ hrseek_active; struct vo_chain* vo_chain; } ;
struct TYPE_4__ {TYPE_1__* f; scalar_t__ got_output_eof; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ MP_FRAME_EOF ; 
 scalar_t__ MP_FRAME_NONE ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*) ; 
 scalar_t__ STATUS_SYNCING ; 
 int VD_EOF ; 
 int VD_ERROR ; 
 int VD_NEW_FRAME ; 
 int VD_PROGRESS ; 
 int VD_WAIT ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,struct mp_image*) ; 
 double FUNC3 (struct MPContext*) ; 
 scalar_t__ FUNC4 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_image**,struct mp_image*) ; 
 struct mp_frame FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mp_frame) ; 
 scalar_t__ FUNC10 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_image*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct MPContext *mpctx)
{
    struct vo_chain *vo_c = mpctx->vo_chain;
    bool hrseek = mpctx->hrseek_active && mpctx->video_status == STATUS_SYNCING;

    if (vo_c->is_coverart) {
        if (FUNC12(mpctx->video_out))
            return VD_EOF;
        hrseek = false;
    }

    if (FUNC4(mpctx, false))
        return VD_NEW_FRAME;

    // Get a new frame if we need one.
    int r = VD_PROGRESS;
    if (FUNC10(mpctx)) {
        // Filter a new frame.
        struct mp_image *img = NULL;
        struct mp_frame frame = FUNC8(vo_c->filter->f->pins[1]);
        if (frame.type == MP_FRAME_NONE) {
            r = vo_c->filter->got_output_eof ? VD_EOF : VD_WAIT;
        } else if (frame.type == MP_FRAME_EOF) {
            r = VD_EOF;
        } else if (frame.type == MP_FRAME_VIDEO) {
            img = frame.data;
        } else {
            FUNC0(mpctx, "unexpected frame type %s\n",
                   FUNC5(frame.type));
            FUNC6(&frame);
            return VD_ERROR;
        }
        if (img) {
            double endpts = FUNC3(mpctx);
            if (endpts != MP_NOPTS_VALUE)
                endpts *= mpctx->play_dir;
            if ((endpts != MP_NOPTS_VALUE && img->pts >= endpts) ||
                mpctx->max_frames == 0)
            {
                FUNC9(vo_c->filter->f->pins[1], frame);
                img = NULL;
                r = VD_EOF;
            } else if (hrseek && mpctx->hrseek_lastframe) {
                FUNC7(&mpctx->saved_frame, img);
            } else if (hrseek && img->pts < mpctx->hrseek_pts - .005) {
                /* just skip - but save if backstep active */
                if (mpctx->hrseek_backstep)
                    FUNC7(&mpctx->saved_frame, img);
            } else if (mpctx->video_status == STATUS_SYNCING &&
                       mpctx->playback_pts != MP_NOPTS_VALUE &&
                       img->pts < mpctx->playback_pts && !vo_c->is_coverart)
            {
                /* skip after stream-switching */
            } else {
                if (hrseek && mpctx->hrseek_backstep) {
                    if (mpctx->saved_frame) {
                        FUNC2(mpctx, mpctx->saved_frame);
                        mpctx->saved_frame = NULL;
                    } else {
                        FUNC1(mpctx, "Backstep failed.\n");
                    }
                    mpctx->hrseek_backstep = false;
                }
                FUNC2(mpctx, img);
                img = NULL;
            }
            FUNC11(img);
        }
    }

    // Last-frame seek
    if (r <= 0 && hrseek && mpctx->hrseek_lastframe && mpctx->saved_frame) {
        FUNC2(mpctx, mpctx->saved_frame);
        mpctx->saved_frame = NULL;
        r = VD_PROGRESS;
    }

    return FUNC4(mpctx, r <= 0) ? VD_NEW_FRAME : r;
}