
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {int play_start; } ;
struct MPContext {int play_dir; struct MPOpts* opts; } ;


 double MP_NOPTS_VALUE ;
 double get_start_time (struct MPContext*,int ) ;
 double rel_time_to_abs (struct MPContext*,int ) ;

double get_play_start_pts(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    double res = rel_time_to_abs(mpctx, opts->play_start);
    if (res == MP_NOPTS_VALUE)
        res = get_start_time(mpctx, mpctx->play_dir);
    return res;
}
