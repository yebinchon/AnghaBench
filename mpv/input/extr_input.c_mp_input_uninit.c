
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int mutex; struct input_ctx* current_down_cmd; int cmd_queue; } ;


 int clear_queue (int *) ;
 int close_input_sources (struct input_ctx*) ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int pthread_mutex_destroy (int *) ;
 int reload_opts (struct input_ctx*,int) ;
 int talloc_free (struct input_ctx*) ;

void mp_input_uninit(struct input_ctx *ictx)
{
    if (!ictx)
        return;

    input_lock(ictx);
    reload_opts(ictx, 1);
    input_unlock(ictx);

    close_input_sources(ictx);
    clear_queue(&ictx->cmd_queue);
    talloc_free(ictx->current_down_cmd);
    pthread_mutex_destroy(&ictx->mutex);
    talloc_free(ictx);
}
