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
struct TYPE_3__ {double play_dir; int pts_reset; } ;
struct priv {double pts; TYPE_2__* header; TYPE_1__ public; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_4__ {scalar_t__ missing_timestamps; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct priv*,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,char*,double,double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (struct mp_aframe*) ; 
 double FUNC4 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_aframe*,double) ; 

__attribute__((used)) static void FUNC6(struct priv *p, struct mp_aframe *aframe)
{
    double dir = p->public.play_dir;

    double frame_pts = FUNC4(aframe);
    double frame_len = FUNC3(aframe);

    if (frame_pts != MP_NOPTS_VALUE) {
        if (dir < 0)
            frame_pts = -(frame_pts + frame_len);

        if (p->pts != MP_NOPTS_VALUE)
            FUNC0(p, "value %f audio-pts-err", p->pts - frame_pts);

        double diff = FUNC2(p->pts - frame_pts);

        // Attempt to detect jumps in PTS. Even for the lowest sample rates and
        // with worst container rounded timestamp, this should be a margin more
        // than enough.
        if (p->pts != MP_NOPTS_VALUE && diff > 0.1) {
            FUNC1(p, "Invalid audio PTS: %f -> %f\n", p->pts, frame_pts);
            if (diff >= 5)
                p->public.pts_reset = true;
        }

        // Keep the interpolated timestamp if it doesn't deviate more
        // than 1 ms from the real one. (MKV rounded timestamps.)
        if (p->pts == MP_NOPTS_VALUE || diff > 0.001)
            p->pts = frame_pts;
    }

    if (p->pts == MP_NOPTS_VALUE && p->header->missing_timestamps)
        p->pts = 0;

    FUNC5(aframe, p->pts);

    if (p->pts != MP_NOPTS_VALUE)
        p->pts += frame_len;
}