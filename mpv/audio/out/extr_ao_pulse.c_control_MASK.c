#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int channels; int /*<<< orphan*/ * values; } ;
struct TYPE_5__ {int /*<<< orphan*/  mute; TYPE_4__ volume; } ;
struct priv {int /*<<< orphan*/  stream; int /*<<< orphan*/  mainloop; int /*<<< orphan*/  context; TYPE_1__ pi; } ;
struct pa_cvolume {int channels; void** values; } ;
struct TYPE_6__ {int /*<<< orphan*/  num; } ;
struct ao {TYPE_2__ channels; struct priv* priv; } ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  enum aocontrol { ____Placeholder_aocontrol } aocontrol ;
struct TYPE_7__ {void* right; void* left; } ;
typedef  TYPE_3__ ao_control_vol_t ;

/* Variables and functions */
#define  AOCONTROL_GET_MUTE 132 
#define  AOCONTROL_GET_VOLUME 131 
#define  AOCONTROL_SET_MUTE 130 
#define  AOCONTROL_SET_VOLUME 129 
#define  AOCONTROL_UPDATE_STREAM_TITLE 128 
 int CONTROL_ERROR ; 
 int CONTROL_OK ; 
 int CONTROL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  info_func ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pa_cvolume*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct pa_cvolume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pa_cvolume*,int,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  success_cb ; 
 int /*<<< orphan*/  FUNC15 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct priv *priv = ao->priv;
    switch (cmd) {
    case AOCONTROL_GET_MUTE:
    case AOCONTROL_GET_VOLUME: {
        uint32_t devidx = FUNC11(priv->stream);
        FUNC13(priv->mainloop);
        if (!FUNC15(priv, FUNC4(priv->context, devidx,
                                                         info_func, ao))) {
            FUNC0("pa_context_get_sink_input_info() failed");
            return CONTROL_ERROR;
        }
        // Warning: some information in pi might be unaccessible, because
        // we naively copied the struct, without updating pointers etc.
        // Pointers might point to invalid data, accessors might fail.
        if (cmd == AOCONTROL_GET_VOLUME) {
            ao_control_vol_t *vol = arg;
            if (priv->pi.volume.channels != 2)
                vol->left = vol->right =
                    FUNC2(FUNC7(&priv->pi.volume));
            else {
                vol->left = FUNC2(priv->pi.volume.values[0]);
                vol->right = FUNC2(priv->pi.volume.values[1]);
            }
        } else if (cmd == AOCONTROL_GET_MUTE) {
            bool *mute = arg;
            *mute = priv->pi.mute;
        }
        return CONTROL_OK;
    }

    case AOCONTROL_SET_MUTE:
    case AOCONTROL_SET_VOLUME: {
        pa_operation *o;

        FUNC13(priv->mainloop);
        uint32_t stream_index = FUNC11(priv->stream);
        if (cmd == AOCONTROL_SET_VOLUME) {
            const ao_control_vol_t *vol = arg;
            struct pa_cvolume volume;

            FUNC8(&volume, ao->channels.num);
            if (volume.channels != 2)
                FUNC9(&volume, volume.channels, FUNC1(vol->left));
            else {
                volume.values[0] = FUNC1(vol->left);
                volume.values[1] = FUNC1(vol->right);
            }
            o = FUNC6(priv->context, stream_index,
                                                 &volume, NULL, NULL);
            if (!o) {
                FUNC14(priv->mainloop);
                FUNC0("pa_context_set_sink_input_volume() failed");
                return CONTROL_ERROR;
            }
        } else if (cmd == AOCONTROL_SET_MUTE) {
            const bool *mute = arg;
            o = FUNC5(priv->context, stream_index,
                                               *mute, NULL, NULL);
            if (!o) {
                FUNC14(priv->mainloop);
                FUNC0("pa_context_set_sink_input_mute() failed");
                return CONTROL_ERROR;
            }
        } else
            FUNC3();
        /* We don't wait for completion here */
        FUNC10(o);
        FUNC14(priv->mainloop);
        return CONTROL_OK;
    }

    case AOCONTROL_UPDATE_STREAM_TITLE: {
        char *title = (char *)arg;
        FUNC13(priv->mainloop);
        if (!FUNC15(priv, FUNC12(priv->stream, title,
                                             success_cb, ao)))
        {
            FUNC0("pa_stream_set_name() failed");
            return CONTROL_ERROR;
        }
        return CONTROL_OK;
    }

    default:
        return CONTROL_UNKNOWN;
    }
}