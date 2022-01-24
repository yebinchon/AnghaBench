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
struct demux_packet {double start; double end; struct demux_packet* next; scalar_t__ segmented; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; scalar_t__ keyframe; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 double FUNC0 (double,double) ; 
 double FUNC1 (double,double) ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct demux_packet *FUNC3(struct demux_packet *pkt,
                                                   double *out_kf_min,
                                                   double *out_kf_max)
{
    struct demux_packet *start = pkt;
    double min = MP_NOPTS_VALUE;
    double max = MP_NOPTS_VALUE;

    while (pkt) {
        if (pkt->keyframe && pkt != start)
            break;

        double ts = FUNC2(pkt->pts, pkt->dts);
        if (pkt->segmented && (ts < pkt->start || ts > pkt->end))
            ts = MP_NOPTS_VALUE;

        min = FUNC1(min, ts);
        max = FUNC0(max, ts);

        pkt = pkt->next;
    }

    if (out_kf_min)
        *out_kf_min = min;
    if (out_kf_max)
        *out_kf_max = max;
    return pkt;
}