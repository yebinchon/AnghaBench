
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sub {double pts; double endpts; int valid; } ;
struct sd_lavc_priv {double current_pts; struct sub* subs; } ;
struct sd {struct sd_lavc_priv* priv; } ;


 int MAX_QUEUE ;
 double MP_NOPTS_VALUE ;

__attribute__((used)) static bool accepts_packet(struct sd *sd, double min_pts)
{
    struct sd_lavc_priv *priv = sd->priv;

    double pts = priv->current_pts;
    if (min_pts != MP_NOPTS_VALUE) {

        if (pts == MP_NOPTS_VALUE || min_pts < pts)
            pts = min_pts;


        if (pts + 1 < min_pts)
            pts = min_pts;
    }

    int last_needed = -1;
    for (int n = 0; n < MAX_QUEUE; n++) {
        struct sub *sub = &priv->subs[n];
        if (!sub->valid)
            continue;
        if (pts == MP_NOPTS_VALUE ||
            ((sub->pts == MP_NOPTS_VALUE || sub->pts >= pts) ||
             (sub->endpts == MP_NOPTS_VALUE || pts < sub->endpts)))
        {
            last_needed = n;
        }
    }


    return last_needed + 1 < MAX_QUEUE;
}
