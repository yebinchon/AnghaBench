
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ stop_play; } ;


 int mp_abort_playback_async (struct MPContext*) ;
 int mp_hook_start (struct MPContext*,char*) ;
 int mp_hook_test_completion (struct MPContext*,char*) ;
 int mp_idle (struct MPContext*) ;

__attribute__((used)) static void process_hooks(struct MPContext *mpctx, char *name)
{
    mp_hook_start(mpctx, name);

    while (!mp_hook_test_completion(mpctx, name)) {
        mp_idle(mpctx);


        if (mpctx->stop_play)
            mp_abort_playback_async(mpctx);
    }
}
