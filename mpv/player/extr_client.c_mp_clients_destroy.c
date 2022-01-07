
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {TYPE_1__* clients; } ;
struct TYPE_2__ {scalar_t__ num_clients; int lock; scalar_t__ render_context; int gl_cb_ctx; } ;


 int MP_FATAL (struct MPContext*,char*) ;
 int TA_FREEP (int *) ;
 int abort () ;
 int assert (int) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (TYPE_1__*) ;

void mp_clients_destroy(struct MPContext *mpctx)
{
    if (!mpctx->clients)
        return;
    assert(mpctx->clients->num_clients == 0);

    TA_FREEP(&mpctx->clients->gl_cb_ctx);



    if (mpctx->clients->render_context) {
        MP_FATAL(mpctx, "Broken API use: mpv_render_context_free() not called.\n");
        abort();
    }

    pthread_mutex_destroy(&mpctx->clients->lock);
    talloc_free(mpctx->clients);
    mpctx->clients = ((void*)0);
}
