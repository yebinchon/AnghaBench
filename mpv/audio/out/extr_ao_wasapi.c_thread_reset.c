
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int sample_count; int pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IAudioClient_Reset (int ) ;
 int IAudioClient_Stop (int ) ;
 int MP_DBG (struct wasapi_state*,char*) ;
 int MP_ERR (struct wasapi_state*,char*,int ) ;
 int atomic_store (int *,int ) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static void thread_reset(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    HRESULT hr;
    MP_DBG(state, "Thread Reset\n");
    hr = IAudioClient_Stop(state->pAudioClient);
    if (FAILED(hr))
        MP_ERR(state, "IAudioClient_Stop returned: %s\n", mp_HRESULT_to_str(hr));

    hr = IAudioClient_Reset(state->pAudioClient);
    if (FAILED(hr))
        MP_ERR(state, "IAudioClient_Reset returned: %s\n", mp_HRESULT_to_str(hr));

    atomic_store(&state->sample_count, 0);
}
