
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wasapi_state {int pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
struct TYPE_3__ {int Format; } ;
typedef TYPE_1__ WAVEFORMATEXTENSIBLE ;
typedef int HRESULT ;


 int AUDCLNT_SHAREMODE_EXCLUSIVE ;
 int IAudioClient_IsFormatSupported (int ,int ,int *,int *) ;
 int MP_VERBOSE (struct ao*,char*,int ,int ) ;
 int SUCCEEDED (int ) ;
 int mp_format_res_str (int ) ;
 int waveformat_to_str (int *) ;

__attribute__((used)) static bool try_format_exclusive(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat)
{
    struct wasapi_state *state = ao->priv;
    HRESULT hr = IAudioClient_IsFormatSupported(state->pAudioClient,
                                                AUDCLNT_SHAREMODE_EXCLUSIVE,
                                                &wformat->Format, ((void*)0));
    MP_VERBOSE(ao, "Trying %s (exclusive) -> %s\n",
               waveformat_to_str(&wformat->Format), mp_format_res_str(hr));
    return SUCCEEDED(hr);
}
