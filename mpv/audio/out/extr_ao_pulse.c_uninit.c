
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int wakeup_lock; int wakeup; int * mainloop; int * context; int * stream; } ;
struct ao {struct priv* priv; } ;


 int pa_context_disconnect (int *) ;
 int pa_context_unref (int *) ;
 int pa_stream_disconnect (int *) ;
 int pa_stream_unref (int *) ;
 int pa_threaded_mainloop_free (int *) ;
 int pa_threaded_mainloop_stop (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *priv = ao->priv;

    if (priv->mainloop)
        pa_threaded_mainloop_stop(priv->mainloop);

    if (priv->stream) {
        pa_stream_disconnect(priv->stream);
        pa_stream_unref(priv->stream);
        priv->stream = ((void*)0);
    }

    if (priv->context) {
        pa_context_disconnect(priv->context);
        pa_context_unref(priv->context);
        priv->context = ((void*)0);
    }

    if (priv->mainloop) {
        pa_threaded_mainloop_free(priv->mainloop);
        priv->mainloop = ((void*)0);
    }

    pthread_cond_destroy(&priv->wakeup);
    pthread_mutex_destroy(&priv->wakeup_lock);
}
