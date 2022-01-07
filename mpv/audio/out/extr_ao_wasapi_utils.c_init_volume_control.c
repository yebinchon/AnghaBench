
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {scalar_t__ share_mode; int pAudioVolume; int pEndpointVolume; scalar_t__ vol_hw_support; int pAudioClient; int pDevice; } ;
typedef int HRESULT ;


 scalar_t__ AUDCLNT_SHAREMODE_EXCLUSIVE ;
 int CLSCTX_ALL ;
 int EXIT_ON_ERROR (int ) ;
 int IAudioClient_GetService (int ,int *,void**) ;
 int IAudioEndpointVolume_QueryHardwareSupport (int ,scalar_t__*) ;
 int IID_IAudioEndpointVolume ;
 int IID_ISimpleAudioVolume ;
 int IMMDeviceActivator_Activate (int ,int *,int ,int *,void**) ;
 int MP_DBG (struct wasapi_state*,char*) ;
 int MP_WARN (struct wasapi_state*,char*,int ) ;
 int SAFE_RELEASE (int ) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static void init_volume_control(struct wasapi_state *state)
{
    HRESULT hr;
    if (state->share_mode == AUDCLNT_SHAREMODE_EXCLUSIVE) {
        MP_DBG(state, "Activating pEndpointVolume interface\n");
        hr = IMMDeviceActivator_Activate(state->pDevice,
                                         &IID_IAudioEndpointVolume,
                                         CLSCTX_ALL, ((void*)0),
                                         (void **)&state->pEndpointVolume);
        EXIT_ON_ERROR(hr);

        MP_DBG(state, "IAudioEndpointVolume::QueryHardwareSupport\n");
        hr = IAudioEndpointVolume_QueryHardwareSupport(state->pEndpointVolume,
                                                       &state->vol_hw_support);
        EXIT_ON_ERROR(hr);
    } else {
        MP_DBG(state, "IAudioClient::Initialize pAudioVolume\n");
        hr = IAudioClient_GetService(state->pAudioClient,
                                     &IID_ISimpleAudioVolume,
                                     (void **)&state->pAudioVolume);
        EXIT_ON_ERROR(hr);
    }
    return;
exit_label:
    state->vol_hw_support = 0;
    SAFE_RELEASE(state->pEndpointVolume);
    SAFE_RELEASE(state->pAudioVolume);
    MP_WARN(state, "Error setting up volume control: %s\n",
            mp_HRESULT_to_str(hr));
}
