
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_chain {int filter; } ;
struct MPContext {scalar_t__ audio_status; struct ao_chain* ao_chain; } ;


 int MPSEEK_EXACT ;
 scalar_t__ STATUS_PLAYING ;
 int issue_refresh_seek (struct MPContext*,int ) ;
 double mp_output_get_measured_total_delay (int ) ;
 scalar_t__ recreate_audio_filters (struct MPContext*) ;

int reinit_audio_filters(struct MPContext *mpctx)
{
    struct ao_chain *ao_c = mpctx->ao_chain;
    if (!ao_c)
        return 0;

    double delay = mp_output_get_measured_total_delay(ao_c->filter);

    if (recreate_audio_filters(mpctx) < 0)
        return -1;

    double ndelay = mp_output_get_measured_total_delay(ao_c->filter);



    if (mpctx->audio_status == STATUS_PLAYING && delay - ndelay >= 0.2)
        issue_refresh_seek(mpctx, MPSEEK_EXACT);
    return 1;
}
