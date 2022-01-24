#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct track {struct dec_sub* d_sub; } ;
struct sd_times {double start; double end; } ;
struct m_property {int dummy; } ;
struct dec_sub {int dummy; } ;
struct TYPE_2__ {double playback_pts; struct track*** current_track; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 size_t STREAM_SUB ; 
 struct sd_times FUNC0 (struct dec_sub*,double) ; 

__attribute__((used)) static struct sd_times FUNC1(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    struct sd_times res = { .start = MP_NOPTS_VALUE, .end = MP_NOPTS_VALUE };
    MPContext *mpctx = ctx;
    struct track *track = mpctx->current_track[0][STREAM_SUB];
    struct dec_sub *sub = track ? track->d_sub : NULL;
    double pts = mpctx->playback_pts;
    if (!sub || pts == MP_NOPTS_VALUE)
        return res;
    return FUNC0(sub, pts);
}