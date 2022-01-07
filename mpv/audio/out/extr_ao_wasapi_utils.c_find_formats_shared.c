
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wasapi_state {int pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
struct TYPE_4__ {int Format; } ;
typedef TYPE_1__ WAVEFORMATEXTENSIBLE ;
typedef int WAVEFORMATEX ;
typedef scalar_t__ HRESULT ;


 scalar_t__ AUDCLNT_E_UNSUPPORTED_FORMAT ;
 int AUDCLNT_SHAREMODE_SHARED ;
 int CoTaskMemFree (int *) ;
 int EXIT_ON_ERROR (scalar_t__) ;
 scalar_t__ IAudioClient_GetMixFormat (int ,int **) ;
 scalar_t__ IAudioClient_IsFormatSupported (int ,int ,int *,int **) ;
 int MP_ERR (struct wasapi_state*,char*,int ) ;
 int MP_VERBOSE (struct ao*,char*,int ,...) ;


 int mp_HRESULT_to_str (scalar_t__) ;
 int mp_format_res_str (scalar_t__) ;
 int waveformat_copy (TYPE_1__*,int *) ;
 int waveformat_to_str (int *) ;

__attribute__((used)) static bool find_formats_shared(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat)
{
    struct wasapi_state *state = ao->priv;

    WAVEFORMATEX *closestMatch;
    HRESULT hr = IAudioClient_IsFormatSupported(state->pAudioClient,
                                                AUDCLNT_SHAREMODE_SHARED,
                                                &wformat->Format,
                                                &closestMatch);
    MP_VERBOSE(ao, "Trying %s (shared) -> %s\n",
               waveformat_to_str(&wformat->Format), mp_format_res_str(hr));
    if (hr != AUDCLNT_E_UNSUPPORTED_FORMAT)
        EXIT_ON_ERROR(hr);

    switch (hr) {
    case 128:
        break;
    case 129:
        waveformat_copy(wformat, closestMatch);
        CoTaskMemFree(closestMatch);
        MP_VERBOSE(ao, "Closest match is %s\n",
                   waveformat_to_str(&wformat->Format));
        break;
    default:
        hr = IAudioClient_GetMixFormat(state->pAudioClient, &closestMatch);
        EXIT_ON_ERROR(hr);
        waveformat_copy(wformat, closestMatch);
        MP_VERBOSE(ao, "Fallback to mix format %s\n",
                   waveformat_to_str(&wformat->Format));
        CoTaskMemFree(closestMatch);
    }

    return 1;
exit_label:
    MP_ERR(state, "Error finding shared mode format: %s\n",
           mp_HRESULT_to_str(hr));
    return 0;
}
