
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int hTask; scalar_t__ pDevice; scalar_t__ pAudioClient; scalar_t__ pSessionControl; scalar_t__ pEndpointVolume; scalar_t__ pAudioVolume; scalar_t__ pAudioClock; scalar_t__ pRenderClient; } ;
struct ao {struct wasapi_state* priv; } ;


 int AvRevertMmThreadCharacteristics (int ) ;
 int IAudioClient_Stop (scalar_t__) ;
 int MP_DBG (struct ao*,char*) ;
 int SAFE_DESTROY (int ,int ) ;
 int SAFE_RELEASE (scalar_t__) ;

void wasapi_thread_uninit(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    MP_DBG(ao, "Thread shutdown\n");

    if (state->pAudioClient)
        IAudioClient_Stop(state->pAudioClient);

    SAFE_RELEASE(state->pRenderClient);
    SAFE_RELEASE(state->pAudioClock);
    SAFE_RELEASE(state->pAudioVolume);
    SAFE_RELEASE(state->pEndpointVolume);
    SAFE_RELEASE(state->pSessionControl);
    SAFE_RELEASE(state->pAudioClient);
    SAFE_RELEASE(state->pDevice);

    SAFE_DESTROY(state->hTask, AvRevertMmThreadCharacteristics(state->hTask));

    MP_DBG(ao, "Thread uninit done\n");
}
