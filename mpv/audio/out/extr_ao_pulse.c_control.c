
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int channels; int * values; } ;
struct TYPE_5__ {int mute; TYPE_4__ volume; } ;
struct priv {int stream; int mainloop; int context; TYPE_1__ pi; } ;
struct pa_cvolume {int channels; void** values; } ;
struct TYPE_6__ {int num; } ;
struct ao {TYPE_2__ channels; struct priv* priv; } ;
typedef int pa_operation ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;
struct TYPE_7__ {void* right; void* left; } ;
typedef TYPE_3__ ao_control_vol_t ;







 int CONTROL_ERROR ;
 int CONTROL_OK ;
 int CONTROL_UNKNOWN ;
 int GENERIC_ERR_MSG (char*) ;
 void* VOL_MP2PA (void*) ;
 void* VOL_PA2MP (int ) ;
 int abort () ;
 int info_func ;
 int pa_context_get_sink_input_info (int ,int ,int ,struct ao*) ;
 int * pa_context_set_sink_input_mute (int ,int ,int const,int *,int *) ;
 int * pa_context_set_sink_input_volume (int ,int ,struct pa_cvolume*,int *,int *) ;
 int pa_cvolume_avg (TYPE_4__*) ;
 int pa_cvolume_reset (struct pa_cvolume*,int ) ;
 int pa_cvolume_set (struct pa_cvolume*,int,void*) ;
 int pa_operation_unref (int *) ;
 int pa_stream_get_index (int ) ;
 int pa_stream_set_name (int ,char*,int ,struct ao*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int success_cb ;
 int waitop (struct priv*,int ) ;

__attribute__((used)) static int control(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct priv *priv = ao->priv;
    switch (cmd) {
    case 132:
    case 131: {
        uint32_t devidx = pa_stream_get_index(priv->stream);
        pa_threaded_mainloop_lock(priv->mainloop);
        if (!waitop(priv, pa_context_get_sink_input_info(priv->context, devidx,
                                                         info_func, ao))) {
            GENERIC_ERR_MSG("pa_context_get_sink_input_info() failed");
            return CONTROL_ERROR;
        }



        if (cmd == 131) {
            ao_control_vol_t *vol = arg;
            if (priv->pi.volume.channels != 2)
                vol->left = vol->right =
                    VOL_PA2MP(pa_cvolume_avg(&priv->pi.volume));
            else {
                vol->left = VOL_PA2MP(priv->pi.volume.values[0]);
                vol->right = VOL_PA2MP(priv->pi.volume.values[1]);
            }
        } else if (cmd == 132) {
            bool *mute = arg;
            *mute = priv->pi.mute;
        }
        return CONTROL_OK;
    }

    case 130:
    case 129: {
        pa_operation *o;

        pa_threaded_mainloop_lock(priv->mainloop);
        uint32_t stream_index = pa_stream_get_index(priv->stream);
        if (cmd == 129) {
            const ao_control_vol_t *vol = arg;
            struct pa_cvolume volume;

            pa_cvolume_reset(&volume, ao->channels.num);
            if (volume.channels != 2)
                pa_cvolume_set(&volume, volume.channels, VOL_MP2PA(vol->left));
            else {
                volume.values[0] = VOL_MP2PA(vol->left);
                volume.values[1] = VOL_MP2PA(vol->right);
            }
            o = pa_context_set_sink_input_volume(priv->context, stream_index,
                                                 &volume, ((void*)0), ((void*)0));
            if (!o) {
                pa_threaded_mainloop_unlock(priv->mainloop);
                GENERIC_ERR_MSG("pa_context_set_sink_input_volume() failed");
                return CONTROL_ERROR;
            }
        } else if (cmd == 130) {
            const bool *mute = arg;
            o = pa_context_set_sink_input_mute(priv->context, stream_index,
                                               *mute, ((void*)0), ((void*)0));
            if (!o) {
                pa_threaded_mainloop_unlock(priv->mainloop);
                GENERIC_ERR_MSG("pa_context_set_sink_input_mute() failed");
                return CONTROL_ERROR;
            }
        } else
            abort();

        pa_operation_unref(o);
        pa_threaded_mainloop_unlock(priv->mainloop);
        return CONTROL_OK;
    }

    case 128: {
        char *title = (char *)arg;
        pa_threaded_mainloop_lock(priv->mainloop);
        if (!waitop(priv, pa_stream_set_name(priv->stream, title,
                                             success_cb, ao)))
        {
            GENERIC_ERR_MSG("pa_stream_set_name() failed");
            return CONTROL_ERROR;
        }
        return CONTROL_OK;
    }

    default:
        return CONTROL_UNKNOWN;
    }
}
