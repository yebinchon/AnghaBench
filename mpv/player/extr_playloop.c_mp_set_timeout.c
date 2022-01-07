
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {double sleeptime; int dispatch; } ;
typedef int int64_t ;


 int mp_add_timeout (int ,double) ;
 int mp_dispatch_adjust_timeout (int ,int ) ;
 int mp_time_us () ;

void mp_set_timeout(struct MPContext *mpctx, double sleeptime)
{
    if (mpctx->sleeptime > sleeptime) {
        mpctx->sleeptime = sleeptime;
        int64_t abstime = mp_add_timeout(mp_time_us(), sleeptime);
        mp_dispatch_adjust_timeout(mpctx->dispatch, abstime);
    }
}
