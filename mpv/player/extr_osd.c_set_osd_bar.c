
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPOpts {int osd_level; double osd_duration; int osd_bar_visible; int video_osd; } ;
struct TYPE_2__ {int type; double value; scalar_t__ num_stops; int stops; } ;
struct MPContext {TYPE_1__ osd_progbar; int osd; scalar_t__ osd_visible; struct MPOpts* opts; scalar_t__ video_out; } ;


 int MP_TARRAY_APPEND (struct MPContext*,int ,scalar_t__,float) ;
 scalar_t__ mp_time_sec () ;
 int mp_wakeup_core (struct MPContext*) ;
 int osd_set_progbar (int ,TYPE_1__*) ;

void set_osd_bar(struct MPContext *mpctx, int type,
                 double min, double max, double neutral, double val)
{
    struct MPOpts *opts = mpctx->opts;
    bool video_osd = mpctx->video_out && mpctx->opts->video_osd;
    if (opts->osd_level < 1 || !opts->osd_bar_visible || !video_osd)
        return;

    mpctx->osd_visible = mp_time_sec() + opts->osd_duration / 1000.0;
    mpctx->osd_progbar.type = type;
    mpctx->osd_progbar.value = (val - min) / (max - min);
    mpctx->osd_progbar.num_stops = 0;
    if (neutral > min && neutral < max) {
        float pos = (neutral - min) / (max - min);
        MP_TARRAY_APPEND(mpctx, mpctx->osd_progbar.stops,
                         mpctx->osd_progbar.num_stops, pos);
    }
    osd_set_progbar(mpctx->osd, &mpctx->osd_progbar);
    mp_wakeup_core(mpctx);
}
