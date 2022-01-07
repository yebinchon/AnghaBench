
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ stop_play; scalar_t__ initialized; } ;


 scalar_t__ PT_QUIT ;
 int mp_idle (struct MPContext*) ;
 int mp_play_files (struct MPContext*) ;
 int mp_shutdown_clients (struct MPContext*) ;
 int mpthread_set_name (char*) ;

__attribute__((used)) static void *core_thread(void *p)
{
    struct MPContext *mpctx = p;

    mpthread_set_name("mpv core");

    while (!mpctx->initialized && mpctx->stop_play != PT_QUIT)
        mp_idle(mpctx);

    if (mpctx->initialized)
        mp_play_files(mpctx);




    mp_shutdown_clients(mpctx);

    return ((void*)0);
}
