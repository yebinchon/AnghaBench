
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ sleeptime; int dispatch; } ;


 scalar_t__ INFINITY ;
 int MP_STATS (struct MPContext*,char*) ;
 int mp_dispatch_queue_process (int ,scalar_t__) ;

void mp_wait_events(struct MPContext *mpctx)
{
    bool sleeping = mpctx->sleeptime > 0;
    if (sleeping)
        MP_STATS(mpctx, "start sleep");

    mp_dispatch_queue_process(mpctx->dispatch, mpctx->sleeptime);

    mpctx->sleeptime = INFINITY;

    if (sleeping)
        MP_STATS(mpctx, "end sleep");
}
