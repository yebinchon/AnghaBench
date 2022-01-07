
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_waiter {int dummy; } ;
struct MPContext {int playback_abort; TYPE_1__* opts; } ;
struct TYPE_2__ {int external_files; int sub_name; int audio_files; } ;


 int STREAM_AUDIO ;
 int STREAM_SUB ;
 int STREAM_TYPE_COUNT ;
 int autoload_external_files (struct MPContext*,int ) ;
 int load_chapters (struct MPContext*) ;
 int mp_core_lock (struct MPContext*) ;
 int mp_core_unlock (struct MPContext*) ;
 int mp_waiter_wakeup (struct mp_waiter*,int ) ;
 int mp_wakeup_core (struct MPContext*) ;
 int open_external_files (struct MPContext*,int ,int ) ;

__attribute__((used)) static void load_external_opts_thread(void *p)
{
    void **a = p;
    struct MPContext *mpctx = a[0];
    struct mp_waiter *waiter = a[1];

    mp_core_lock(mpctx);

    load_chapters(mpctx);
    open_external_files(mpctx, mpctx->opts->audio_files, STREAM_AUDIO);
    open_external_files(mpctx, mpctx->opts->sub_name, STREAM_SUB);
    open_external_files(mpctx, mpctx->opts->external_files, STREAM_TYPE_COUNT);
    autoload_external_files(mpctx, mpctx->playback_abort);

    mp_waiter_wakeup(waiter, 0);
    mp_wakeup_core(mpctx);
    mp_core_unlock(mpctx);
}
