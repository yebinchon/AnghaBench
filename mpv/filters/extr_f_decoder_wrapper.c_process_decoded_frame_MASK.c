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
struct priv {scalar_t__ start_pts; double end; double start; int /*<<< orphan*/  header; scalar_t__ new_segment; } ;
struct mp_image {double pts; int /*<<< orphan*/  dts; int /*<<< orphan*/  a53_cc; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_aframe {double pts; int /*<<< orphan*/  dts; int /*<<< orphan*/  a53_cc; } ;
struct demux_packet {double pts; int /*<<< orphan*/  dts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,char*) ; 
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_EOF ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct demux_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*,scalar_t__,scalar_t__) ; 
 double FUNC5 (struct mp_image*) ; 
 scalar_t__ FUNC6 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_frame*) ; 
 struct demux_packet* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct priv *p, struct mp_frame *frame)
{
    if (frame->type == MP_FRAME_EOF) {
        // if we were just draining current segment, don't propagate EOF
        if (p->new_segment)
            FUNC7(frame);
        return true;
    }

    bool segment_ended = false;

    if (frame->type == MP_FRAME_VIDEO) {
        struct mp_image *mpi = frame->data;

        FUNC2(p, mpi);

        struct demux_packet *ccpkt = FUNC8(mpi->a53_cc);
        if (ccpkt) {
            FUNC1(&mpi->a53_cc);
            ccpkt->pts = mpi->pts;
            ccpkt->dts = mpi->dts;
            FUNC3(p->header, ccpkt);
        }

        // Stop hr-seek logic.
        if (mpi->pts == MP_NOPTS_VALUE || mpi->pts >= p->start_pts)
            p->start_pts = MP_NOPTS_VALUE;

        if (mpi->pts != MP_NOPTS_VALUE) {
            segment_ended = p->end != MP_NOPTS_VALUE && mpi->pts >= p->end;
            if ((p->start != MP_NOPTS_VALUE && mpi->pts < p->start) ||
                segment_ended)
            {
                FUNC7(frame);
                goto done;
            }
        }
    } else if (frame->type == MP_FRAME_AUDIO) {
        struct mp_aframe *aframe = frame->data;

        FUNC4(aframe, p->start, p->end);
        double pts = FUNC5(aframe);
        if (pts != MP_NOPTS_VALUE && p->start != MP_NOPTS_VALUE)
            segment_ended = pts >= p->end;

        if (FUNC6(aframe) == 0) {
            FUNC7(frame);
            goto done;
        }
    } else {
        FUNC0(p, "unknown frame type from decoder\n");
    }

done:
    return segment_ended;
}