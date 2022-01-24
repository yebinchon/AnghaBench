#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct priv {TYPE_1__* opts; } ;
struct ao {int /*<<< orphan*/  format; struct priv* priv; } ;
typedef  int /*<<< orphan*/  snd_mixer_t ;
typedef  int /*<<< orphan*/  snd_mixer_selem_id_t ;
typedef  int /*<<< orphan*/  snd_mixer_elem_t ;
typedef  enum aocontrol { ____Placeholder_aocontrol } aocontrol ;
struct TYPE_4__ {float left; float right; } ;
typedef  TYPE_2__ ao_control_vol_t ;
struct TYPE_3__ {int /*<<< orphan*/  mixer_device; int /*<<< orphan*/  mixer_name; int /*<<< orphan*/  mixer_index; } ;

/* Variables and functions */
#define  AOCONTROL_GET_MUTE 131 
#define  AOCONTROL_GET_VOLUME 130 
#define  AOCONTROL_SET_MUTE 129 
#define  AOCONTROL_SET_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int CONTROL_ERROR ; 
 int CONTROL_FALSE ; 
 int CONTROL_OK ; 
 int CONTROL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,long,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,long*,long*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,int,long) ; 

__attribute__((used)) static int FUNC22(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct priv *p = ao->priv;
    snd_mixer_t *handle = NULL;
    switch (cmd) {
    case AOCONTROL_GET_MUTE:
    case AOCONTROL_SET_MUTE:
    case AOCONTROL_GET_VOLUME:
    case AOCONTROL_SET_VOLUME:
    {
        int err;
        snd_mixer_elem_t *elem;
        snd_mixer_selem_id_t *sid;

        long pmin, pmax;
        long get_vol, set_vol;
        float f_multi;

        if (!FUNC3(ao->format))
            return CONTROL_FALSE;

        FUNC14(&sid);

        FUNC17(sid, p->opts->mixer_index);
        FUNC18(sid, p->opts->mixer_name);

        err = FUNC8(&handle, 0);
        FUNC0("Mixer open error");

        err = FUNC4(handle, p->opts->mixer_device);
        FUNC0("Mixer attach error");

        err = FUNC19(handle, NULL, NULL);
        FUNC0("Mixer register error");

        err = FUNC7(handle);
        FUNC0("Mixer load error");

        elem = FUNC6(handle, sid);
        if (!elem) {
            FUNC2(ao, "Unable to find simple control '%s',%i.\n",
                       FUNC16(sid),
                       FUNC15(sid));
            goto alsa_error;
        }

        FUNC11(elem, &pmin, &pmax);
        f_multi = (100 / (float)(pmax - pmin));

        switch (cmd) {
        case AOCONTROL_SET_VOLUME: {
            ao_control_vol_t *vol = arg;
            set_vol = vol->left / f_multi + pmin + 0.5;

            err = FUNC21(elem, 0, set_vol);
            FUNC0("Error setting left channel");
            FUNC1(ao, "left=%li, ", set_vol);

            set_vol = vol->right / f_multi + pmin + 0.5;

            err = FUNC21(elem, 1, set_vol);
            FUNC0("Error setting right channel");
            FUNC1(ao, "right=%li, pmin=%li, pmax=%li, mult=%f\n",
                   set_vol, pmin, pmax, f_multi);
            break;
        }
        case AOCONTROL_GET_VOLUME: {
            ao_control_vol_t *vol = arg;
            FUNC10(elem, 0, &get_vol);
            vol->left = (get_vol - pmin) * f_multi;
            FUNC10(elem, 1, &get_vol);
            vol->right = (get_vol - pmin) * f_multi;
            FUNC1(ao, "left=%f, right=%f\n", vol->left, vol->right);
            break;
        }
        case AOCONTROL_SET_MUTE: {
            bool *mute = arg;
            if (!FUNC12(elem))
                goto alsa_error;
            if (!FUNC13(elem)) {
                FUNC20(elem, 1, !*mute);
            }
            FUNC20(elem, 0, !*mute);
            break;
        }
        case AOCONTROL_GET_MUTE: {
            bool *mute = arg;
            if (!FUNC12(elem))
                goto alsa_error;
            int tmp = 1;
            FUNC9(elem, 0, &tmp);
            *mute = !tmp;
            if (!FUNC13(elem)) {
                FUNC9(elem, 1, &tmp);
                *mute &= !tmp;
            }
            break;
        }
        }
        FUNC5(handle);
        return CONTROL_OK;
    }

    } //end switch
    return CONTROL_UNKNOWN;

alsa_error:
    if (handle)
        FUNC5(handle);
    return CONTROL_ERROR;
}