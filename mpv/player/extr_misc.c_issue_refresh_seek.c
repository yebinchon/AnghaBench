
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct MPContext {TYPE_1__ current_seek; TYPE_1__ seek; } ;
typedef enum seek_precision { ____Placeholder_seek_precision } seek_precision ;


 int MPSEEK_ABSOLUTE ;
 int get_current_time (struct MPContext*) ;
 int mp_wakeup_core (struct MPContext*) ;
 int queue_seek (struct MPContext*,int ,int ,int,int ) ;

void issue_refresh_seek(struct MPContext *mpctx, enum seek_precision min_prec)
{

    if (mpctx->seek.type) {
        mp_wakeup_core(mpctx);
        return;
    }

    if (mpctx->current_seek.type) {
        mpctx->seek = mpctx->current_seek;
        mp_wakeup_core(mpctx);
        return;
    }
    queue_seek(mpctx, MPSEEK_ABSOLUTE, get_current_time(mpctx), min_prec, 0);
}
