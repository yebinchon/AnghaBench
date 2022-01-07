
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct wasapi_state {scalar_t__ share_mode; int pSessionControl; } ;
struct ao {struct wasapi_state* priv; } ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;



 scalar_t__ AUDCLNT_SHAREMODE_EXCLUSIVE ;
 int CONTROL_FALSE ;
 int CONTROL_OK ;
 int CoTaskMemFree (int *) ;
 int IAudioSessionControl_GetDisplayName (int ,int **) ;
 int IAudioSessionControl_SetDisplayName (int ,int *,int *) ;
 int SAFE_DESTROY (int *,int ) ;
 int * mp_from_utf8 (int *,char*) ;
 int talloc_free (int *) ;
 int thread_control_exclusive (struct ao*,int,void*) ;
 int thread_control_shared (struct ao*,int,void*) ;
 int wcscmp (int *,int *) ;

__attribute__((used)) static int thread_control(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct wasapi_state *state = ao->priv;


    switch (cmd) {
    case 128:
        if (!state->pSessionControl)
            return CONTROL_FALSE;

        wchar_t *title = mp_from_utf8(((void*)0), (char*)arg);
        wchar_t *tmp = ((void*)0);



        do {
            IAudioSessionControl_SetDisplayName(state->pSessionControl, title, ((void*)0));

            SAFE_DESTROY(tmp, CoTaskMemFree(tmp));
            IAudioSessionControl_GetDisplayName(state->pSessionControl, &tmp);
        } while (wcscmp(title, tmp));
        SAFE_DESTROY(tmp, CoTaskMemFree(tmp));
        talloc_free(title);
        return CONTROL_OK;
    }

    return state->share_mode == AUDCLNT_SHAREMODE_EXCLUSIVE ?
        thread_control_exclusive(ao, cmd, arg) :
        thread_control_shared(ao, cmd, arg);
}
