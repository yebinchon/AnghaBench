
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ num_stops; int stops; } ;
struct MPContext {TYPE_1__ osd_progbar; int osd; } ;


 double MP_NOPTS_VALUE ;
 int MP_TARRAY_APPEND (struct MPContext*,int ,scalar_t__,float) ;
 double chapter_start_time (struct MPContext*,int) ;
 int get_ab_loop_times (struct MPContext*,double*) ;
 int get_chapter_count (struct MPContext*) ;
 double get_time_length (struct MPContext*) ;
 int mp_wakeup_core (struct MPContext*) ;
 int osd_set_progbar (int ,TYPE_1__*) ;

void set_osd_bar_chapters(struct MPContext *mpctx, int type)
{
    if (mpctx->osd_progbar.type != type)
        return;

    mpctx->osd_progbar.num_stops = 0;
    double len = get_time_length(mpctx);
    if (len > 0) {

        double ab[2];
        bool valid = get_ab_loop_times(mpctx, ab);
        for (int n = 0; n < 2; n++) {
            if (ab[n] != MP_NOPTS_VALUE) {
                MP_TARRAY_APPEND(mpctx, mpctx->osd_progbar.stops,
                                 mpctx->osd_progbar.num_stops, ab[n] / len);
            }
        }
        if (!valid) {
            int num = get_chapter_count(mpctx);
            for (int n = 0; n < num; n++) {
                double time = chapter_start_time(mpctx, n);
                if (time >= 0) {
                    float pos = time / len;
                    MP_TARRAY_APPEND(mpctx, mpctx->osd_progbar.stops,
                                     mpctx->osd_progbar.num_stops, pos);
                }
            }
        }
    }
    osd_set_progbar(mpctx->osd, &mpctx->osd_progbar);
    mp_wakeup_core(mpctx);
}
