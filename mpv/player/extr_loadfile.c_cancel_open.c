
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int open_active; int open_done; scalar_t__ open_format; scalar_t__ open_url; scalar_t__ open_cancel; int * open_res_demuxer; int open_thread; } ;


 int TA_FREEP (scalar_t__*) ;
 int atomic_store (int *,int) ;
 int demux_cancel_and_free (int *) ;
 int mp_cancel_trigger (scalar_t__) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void cancel_open(struct MPContext *mpctx)
{
    if (mpctx->open_cancel)
        mp_cancel_trigger(mpctx->open_cancel);

    if (mpctx->open_active)
        pthread_join(mpctx->open_thread, ((void*)0));
    mpctx->open_active = 0;

    if (mpctx->open_res_demuxer)
        demux_cancel_and_free(mpctx->open_res_demuxer);
    mpctx->open_res_demuxer = ((void*)0);

    TA_FREEP(&mpctx->open_cancel);
    TA_FREEP(&mpctx->open_url);
    TA_FREEP(&mpctx->open_format);

    atomic_store(&mpctx->open_done, 0);
}
