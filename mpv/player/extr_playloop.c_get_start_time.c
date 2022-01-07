
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct MPContext {TYPE_2__* demuxer; TYPE_1__* opts; } ;
struct TYPE_4__ {int duration; scalar_t__ start_time; } ;
struct TYPE_3__ {int rebase_start_time; } ;


 scalar_t__ MPMAX (int ,int ) ;

double get_start_time(struct MPContext *mpctx, int dir)
{
    double res = 0;
    if (mpctx->demuxer) {
        if (!mpctx->opts->rebase_start_time)
            res += mpctx->demuxer->start_time;
        if (dir < 0)
            res += MPMAX(mpctx->demuxer->duration, 0);
    }
    return res;
}
