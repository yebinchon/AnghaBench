
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {scalar_t__ loop_file; } ;
struct MPContext {scalar_t__ stop_play; int play_dir; scalar_t__ ab_loop_clip; struct MPOpts* opts; } ;
typedef enum seek_precision { ____Placeholder_seek_precision } seek_precision ;


 scalar_t__ AT_END_OF_FILE ;
 scalar_t__ KEEP_PLAYING ;
 int MPSEEK_ABSOLUTE ;
 int MPSEEK_DEFAULT ;
 int MPSEEK_EXACT ;
 int MPSEEK_FLAG_NOFLUSH ;
 double MP_NOPTS_VALUE ;
 int OSD_FFW ;
 scalar_t__ get_ab_loop_times (struct MPContext*,double*) ;
 double get_start_time (struct MPContext*,int ) ;
 int mark_seek (struct MPContext*) ;
 int queue_seek (struct MPContext*,int ,double,int,int ) ;
 int set_osd_function (struct MPContext*,int ) ;

__attribute__((used)) static void handle_loop_file(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;

    if (mpctx->stop_play != AT_END_OF_FILE)
        return;

    double target = MP_NOPTS_VALUE;
    enum seek_precision prec = MPSEEK_DEFAULT;

    double ab[2];
    if (get_ab_loop_times(mpctx, ab) && mpctx->ab_loop_clip) {
        target = ab[0];
        prec = MPSEEK_EXACT;
    } else if (opts->loop_file) {
        if (opts->loop_file > 0)
            opts->loop_file--;
        target = get_start_time(mpctx, mpctx->play_dir);
    }

    if (target != MP_NOPTS_VALUE) {
        mpctx->stop_play = KEEP_PLAYING;
        set_osd_function(mpctx, OSD_FFW);
        mark_seek(mpctx);



        queue_seek(mpctx, MPSEEK_ABSOLUTE, target, prec, MPSEEK_FLAG_NOFLUSH);
    }
}
