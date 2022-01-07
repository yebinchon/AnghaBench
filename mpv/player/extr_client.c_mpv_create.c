
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct MPContext {int clients; int mconfig; } ;
typedef int pthread_t ;
struct TYPE_7__ {TYPE_1__* clients; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_6__ {int have_terminator; } ;


 int core_thread ;
 int m_config_set_profile (int ,char*,int ) ;
 struct MPContext* mp_create () ;
 int mp_destroy (struct MPContext*) ;
 TYPE_2__* mp_new_client (int ,char*) ;
 int mpv_terminate_destroy (TYPE_2__*) ;
 scalar_t__ pthread_create (int *,int *,int ,struct MPContext*) ;

mpv_handle *mpv_create(void)
{
    struct MPContext *mpctx = mp_create();
    if (!mpctx)
        return ((void*)0);

    m_config_set_profile(mpctx->mconfig, "libmpv", 0);

    mpv_handle *ctx = mp_new_client(mpctx->clients, "main");
    if (!ctx) {
        mp_destroy(mpctx);
        return ((void*)0);
    }

    pthread_t thread;
    if (pthread_create(&thread, ((void*)0), core_thread, mpctx) != 0) {
        ctx->clients->have_terminator = 1;
        mpv_terminate_destroy(ctx);
        mp_destroy(mpctx);
        return ((void*)0);
    }

    return ctx;
}
