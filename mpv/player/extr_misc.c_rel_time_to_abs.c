
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_rel_time {int type; double pos; } ;
struct MPContext {TYPE_2__* demuxer; TYPE_1__* opts; } ;
struct TYPE_4__ {double start_time; } ;
struct TYPE_3__ {int rebase_start_time; } ;


 int MPMAX (int ,double) ;
 double MP_NOPTS_VALUE ;




 double chapter_start_time (struct MPContext*,double) ;
 double get_time_length (struct MPContext*) ;

double rel_time_to_abs(struct MPContext *mpctx, struct m_rel_time t)
{
    double length = get_time_length(mpctx);

    double start = 0;
    if (mpctx->demuxer && !mpctx->opts->rebase_start_time)
        start = mpctx->demuxer->start_time;

    switch (t.type) {
    case 131:
        return t.pos;
    case 128:
        if (t.pos >= 0) {
            return start + t.pos;
        } else {
            if (length >= 0)
                return start + MPMAX(length + t.pos, 0.0);
        }
        break;
    case 129:
        if (length >= 0)
            return start + length * (t.pos / 100.0);
        break;
    case 130:
        return chapter_start_time(mpctx, t.pos);
    }

    return MP_NOPTS_VALUE;
}
