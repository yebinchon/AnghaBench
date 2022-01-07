
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int mainloop; int context; int stream; } ;
struct ao {struct priv* priv; } ;
typedef double pa_usec_t ;


 int GENERIC_ERR_MSG (char*) ;
 scalar_t__ PA_ERR_NODATA ;
 scalar_t__ pa_context_errno (int ) ;
 scalar_t__ pa_stream_get_latency (int ,double*,int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int pa_threaded_mainloop_wait (int ) ;

__attribute__((used)) static double get_delay_pulse(struct ao *ao)
{
    struct priv *priv = ao->priv;
    pa_usec_t latency = (pa_usec_t) -1;
    pa_threaded_mainloop_lock(priv->mainloop);
    while (pa_stream_get_latency(priv->stream, &latency, ((void*)0)) < 0) {
        if (pa_context_errno(priv->context) != PA_ERR_NODATA) {
            GENERIC_ERR_MSG("pa_stream_get_latency() failed");
            break;
        }

        pa_threaded_mainloop_wait(priv->mainloop);
    }
    pa_threaded_mainloop_unlock(priv->mainloop);
    return latency == (pa_usec_t) -1 ? 0 : latency / 1000000.0;
}
