
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int abort_lock; struct MPContext* abort_list; int num_abort_list; int global; int input; int osd; int * encode_lavc_ctx; int * ipc_ctx; } ;


 int assert (int) ;
 scalar_t__ cas_terminal_owner (struct MPContext*,struct MPContext*) ;
 int cocoa_set_input_context (int *) ;
 int command_uninit (struct MPContext*) ;
 int encode_lavc_free (int *) ;
 int mp_clients_destroy (struct MPContext*) ;
 int mp_input_uninit (int ) ;
 int mp_msg_uninit (int ) ;
 int mp_shutdown_clients (struct MPContext*) ;
 int mp_uninit_ipc (int *) ;
 int osd_free (int ) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (struct MPContext*) ;
 int terminal_uninit () ;
 int uninit_audio_out (struct MPContext*) ;
 int uninit_libav (int ) ;
 int uninit_video_out (struct MPContext*) ;

void mp_destroy(struct MPContext *mpctx)
{
    mp_shutdown_clients(mpctx);

    mp_uninit_ipc(mpctx->ipc_ctx);
    mpctx->ipc_ctx = ((void*)0);

    uninit_audio_out(mpctx);
    uninit_video_out(mpctx);


    encode_lavc_free(mpctx->encode_lavc_ctx);
    mpctx->encode_lavc_ctx = ((void*)0);

    command_uninit(mpctx);

    mp_clients_destroy(mpctx);

    osd_free(mpctx->osd);





    if (cas_terminal_owner(mpctx, mpctx)) {
        terminal_uninit();
        cas_terminal_owner(mpctx, ((void*)0));
    }

    mp_input_uninit(mpctx->input);

    uninit_libav(mpctx->global);

    mp_msg_uninit(mpctx->global);
    assert(!mpctx->num_abort_list);
    talloc_free(mpctx->abort_list);
    pthread_mutex_destroy(&mpctx->abort_lock);
    talloc_free(mpctx);
}
