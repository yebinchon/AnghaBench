
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IAudioClient_Start (int ) ;
 int MP_DBG (struct wasapi_state*,char*) ;
 int MP_ERR (struct wasapi_state*,char*,int ) ;
 int mp_HRESULT_to_str (int ) ;
 int thread_feed (struct ao*) ;
 int thread_reset (struct ao*) ;

__attribute__((used)) static void thread_resume(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    MP_DBG(state, "Thread Resume\n");
    thread_reset(ao);
    thread_feed(ao);

    HRESULT hr = IAudioClient_Start(state->pAudioClient);
    if (FAILED(hr)) {
        MP_ERR(state, "IAudioClient_Start returned %s\n",
               mp_HRESULT_to_str(hr));
    }
}
