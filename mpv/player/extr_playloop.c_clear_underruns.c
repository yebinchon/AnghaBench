
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct MPContext {TYPE_2__* vo_chain; TYPE_1__* ao_chain; } ;
struct TYPE_4__ {int underrun; } ;
struct TYPE_3__ {int underrun; } ;


 int mp_wakeup_core (struct MPContext*) ;

__attribute__((used)) static void clear_underruns(struct MPContext *mpctx)
{
    if (mpctx->ao_chain && mpctx->ao_chain->underrun) {
        mpctx->ao_chain->underrun = 0;
        mp_wakeup_core(mpctx);
    }

    if (mpctx->vo_chain && mpctx->vo_chain->underrun) {
        mpctx->vo_chain->underrun = 0;
        mp_wakeup_core(mpctx);
    }
}
