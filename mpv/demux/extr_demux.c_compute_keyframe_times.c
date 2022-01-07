
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_packet {double start; double end; struct demux_packet* next; scalar_t__ segmented; int dts; int pts; scalar_t__ keyframe; } ;


 double MP_NOPTS_VALUE ;
 double MP_PTS_MAX (double,double) ;
 double MP_PTS_MIN (double,double) ;
 double MP_PTS_OR_DEF (int ,int ) ;

__attribute__((used)) static struct demux_packet *compute_keyframe_times(struct demux_packet *pkt,
                                                   double *out_kf_min,
                                                   double *out_kf_max)
{
    struct demux_packet *start = pkt;
    double min = MP_NOPTS_VALUE;
    double max = MP_NOPTS_VALUE;

    while (pkt) {
        if (pkt->keyframe && pkt != start)
            break;

        double ts = MP_PTS_OR_DEF(pkt->pts, pkt->dts);
        if (pkt->segmented && (ts < pkt->start || ts > pkt->end))
            ts = MP_NOPTS_VALUE;

        min = MP_PTS_MIN(min, ts);
        max = MP_PTS_MAX(max, ts);

        pkt = pkt->next;
    }

    if (out_kf_min)
        *out_kf_min = min;
    if (out_kf_max)
        *out_kf_max = max;
    return pkt;
}
