
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int mainloop; int stream; } ;
struct pa_sample_spec {int dummy; } ;
struct ao {struct priv* priv; } ;
struct TYPE_3__ {scalar_t__ sink_usec; scalar_t__ since_underrun; int playing; scalar_t__ transport_usec; scalar_t__ read_index; scalar_t__ write_index; } ;
typedef TYPE_1__ pa_timing_info ;
typedef scalar_t__ int64_t ;


 int GENERIC_ERR_MSG (char*) ;
 scalar_t__ pa_bytes_to_usec (scalar_t__,struct pa_sample_spec const*) ;
 struct pa_sample_spec* pa_stream_get_sample_spec (int ) ;
 TYPE_1__* pa_stream_get_timing_info (int ) ;
 int pa_stream_update_timing_info (int ,int *,int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int waitop (struct priv*,int ) ;

__attribute__((used)) static double get_delay_hackfixed(struct ao *ao)
{
    struct priv *priv = ao->priv;
    pa_threaded_mainloop_lock(priv->mainloop);
    if (!waitop(priv, pa_stream_update_timing_info(priv->stream, ((void*)0), ((void*)0)))) {
        GENERIC_ERR_MSG("pa_stream_update_timing_info() failed");
        return 0;
    }
    pa_threaded_mainloop_lock(priv->mainloop);
    const pa_timing_info *ti = pa_stream_get_timing_info(priv->stream);
    if (!ti) {
        pa_threaded_mainloop_unlock(priv->mainloop);
        GENERIC_ERR_MSG("pa_stream_get_timing_info() failed");
        return 0;
    }
    const struct pa_sample_spec *ss = pa_stream_get_sample_spec(priv->stream);
    if (!ss) {
        pa_threaded_mainloop_unlock(priv->mainloop);
        GENERIC_ERR_MSG("pa_stream_get_sample_spec() failed");
        return 0;
    }

    int64_t latency = pa_bytes_to_usec(ti->write_index - ti->read_index, ss);

    latency -= ti->transport_usec;

    int64_t sink_latency = ti->sink_usec;
    if (!ti->playing)





        sink_latency -= pa_bytes_to_usec(ti->since_underrun, ss);
    if (sink_latency > 0)
        latency += sink_latency;
    if (latency < 0)
        latency = 0;
    pa_threaded_mainloop_unlock(priv->mainloop);
    return latency / 1e6;
}
