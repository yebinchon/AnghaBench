
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int mainloop; int stream; } ;
struct ao {int sstride; struct priv* priv; } ;
typedef int pa_operation ;


 int AOPLAY_FINAL_CHUNK ;
 int GENERIC_ERR_MSG (char*) ;
 int PA_SEEK_RELATIVE ;
 int pa_operation_unref (int *) ;
 int * pa_stream_trigger (int ,int *,int *) ;
 scalar_t__ pa_stream_write (int ,void*,int,int *,int ,int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *priv = ao->priv;
    pa_threaded_mainloop_lock(priv->mainloop);
    if (pa_stream_write(priv->stream, data[0], samples * ao->sstride, ((void*)0), 0,
                        PA_SEEK_RELATIVE) < 0) {
        GENERIC_ERR_MSG("pa_stream_write() failed");
        samples = -1;
    }
    if (flags & AOPLAY_FINAL_CHUNK) {

        pa_operation *op = pa_stream_trigger(priv->stream, ((void*)0), ((void*)0));
        pa_operation_unref(op);
    }
    pa_threaded_mainloop_unlock(priv->mainloop);
    return samples;
}
