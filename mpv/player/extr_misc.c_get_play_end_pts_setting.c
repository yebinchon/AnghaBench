
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {int play_length; int play_end; } ;
struct MPContext {struct MPOpts* opts; } ;


 double MP_NOPTS_VALUE ;
 double get_play_start_pts (struct MPContext*) ;
 double rel_time_to_abs (struct MPContext*,int ) ;

__attribute__((used)) static double get_play_end_pts_setting(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    double end = rel_time_to_abs(mpctx, opts->play_end);
    double length = rel_time_to_abs(mpctx, opts->play_length);
    if (length != MP_NOPTS_VALUE) {
        double start = get_play_start_pts(mpctx);
        if (end == MP_NOPTS_VALUE || start + length < end)
            end = start + length;
    }
    return end;
}
