
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {int video_sync; int sync_max_audio_change; double playback_speed; } ;
struct MPContext {scalar_t__ audio_status; double speed_factor_a; double speed_factor_v; double last_av_difference; int display_sync_drift_dir; double audio_speed; struct MPOpts* opts; } ;


 double MPCLAMP (double,int,int) ;
 int MP_VERBOSE (struct MPContext*,char*,double) ;
 scalar_t__ STATUS_PLAYING ;
 int VS_DISP_RESAMPLE ;
 double compute_audio_drift (struct MPContext*,double) ;
 double fabs (double) ;
 scalar_t__ isnormal (double) ;

__attribute__((used)) static void adjust_audio_resample_speed(struct MPContext *mpctx, double vsync)
{
    struct MPOpts *opts = mpctx->opts;
    int mode = opts->video_sync;

    if (mode != VS_DISP_RESAMPLE || mpctx->audio_status != STATUS_PLAYING) {
        mpctx->speed_factor_a = mpctx->speed_factor_v;
        return;
    }
    double max_drift = vsync / 2;
    double av_diff = mpctx->last_av_difference;
    int new = mpctx->display_sync_drift_dir;
    if (av_diff * -mpctx->display_sync_drift_dir >= 0)
        new = 0;
    if (fabs(av_diff) > max_drift)
        new = av_diff >= 0 ? 1 : -1;

    bool change = mpctx->display_sync_drift_dir != new;
    if (new || change) {
        if (change)
            MP_VERBOSE(mpctx, "Change display sync audio drift: %d\n", new);
        mpctx->display_sync_drift_dir = new;

        double max_correct = opts->sync_max_audio_change / 100;
        double audio_factor = 1 + max_correct * -mpctx->display_sync_drift_dir;

        if (new == 0) {


            double drift = compute_audio_drift(mpctx, vsync);
            if (isnormal(drift)) {

                double other = mpctx->opts->playback_speed * mpctx->speed_factor_v;
                audio_factor = (mpctx->audio_speed - drift) / other;
                MP_VERBOSE(mpctx, "Compensation factor: %f\n", audio_factor);
            }
        }

        audio_factor = MPCLAMP(audio_factor, 1 - max_correct, 1 + max_correct);
        mpctx->speed_factor_a = audio_factor * mpctx->speed_factor_v;
    }
}
