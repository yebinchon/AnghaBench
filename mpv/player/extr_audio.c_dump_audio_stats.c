
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ audio_status; int audio_stat_start; double written_audio; int ao; scalar_t__ paused; int log; } ;


 int MP_STATS (struct MPContext*,char*,double) ;
 int MSGL_STATS ;
 scalar_t__ STATUS_PLAYING ;
 double ao_get_delay (int ) ;
 int mp_msg_test (int ,int ) ;
 int mp_time_us () ;

__attribute__((used)) static void dump_audio_stats(struct MPContext *mpctx)
{
    if (!mp_msg_test(mpctx->log, MSGL_STATS))
        return;
    if (mpctx->audio_status != STATUS_PLAYING || !mpctx->ao || mpctx->paused) {
        mpctx->audio_stat_start = 0;
        return;
    }

    double delay = ao_get_delay(mpctx->ao);
    if (!mpctx->audio_stat_start) {
        mpctx->audio_stat_start = mp_time_us();
        mpctx->written_audio = delay;
    }
    double current_audio = mpctx->written_audio - delay;
    double current_time = (mp_time_us() - mpctx->audio_stat_start) / 1e6;
    MP_STATS(mpctx, "value %f ao-dev", current_audio - current_time);
}
