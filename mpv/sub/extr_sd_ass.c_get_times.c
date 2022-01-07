
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd_times {double start; double end; } ;
struct sd_ass_priv {scalar_t__ duration_unknown; TYPE_1__* ass_track; } ;
struct sd {struct sd_ass_priv* priv; } ;
struct TYPE_4__ {long long Start; long long Duration; } ;
struct TYPE_3__ {int n_events; TYPE_2__* events; } ;
typedef TYPE_1__ ASS_Track ;
typedef TYPE_2__ ASS_Event ;


 double MP_NOPTS_VALUE ;
 long long UNKNOWN_DURATION ;
 long long find_timestamp (struct sd*,double) ;

__attribute__((used)) static struct sd_times get_times(struct sd *sd, double pts)
{
    struct sd_ass_priv *ctx = sd->priv;
    ASS_Track *track = ctx->ass_track;
    struct sd_times res = { .start = MP_NOPTS_VALUE, .end = MP_NOPTS_VALUE };

    if (pts == MP_NOPTS_VALUE || ctx->duration_unknown)
        return res;

    long long ipts = find_timestamp(sd, pts);

    for (int i = 0; i < track->n_events; ++i) {
        ASS_Event *event = track->events + i;
        if (ipts >= event->Start && ipts < event->Start + event->Duration) {
            double start = event->Start / 1000.0;
            double end = event->Duration == UNKNOWN_DURATION ?
                MP_NOPTS_VALUE : (event->Start + event->Duration) / 1000.0;

            if (res.start == MP_NOPTS_VALUE || res.start > start)
                res.start = start;

            if (res.end == MP_NOPTS_VALUE || res.end < end)
                res.end = end;
        }
    }

    return res;
}
