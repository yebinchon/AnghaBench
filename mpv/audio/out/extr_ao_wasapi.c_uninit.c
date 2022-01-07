
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int deviceID; scalar_t__ hAudioThread; scalar_t__ hWake; scalar_t__ hInitDone; } ;
struct ao {struct wasapi_state* priv; } ;


 int CloseHandle (scalar_t__) ;
 int CoUninitialize () ;
 int INFINITE ;
 int MP_DBG (struct ao*,char*) ;
 int MP_ERR (struct ao*,char*) ;
 int SAFE_DESTROY (scalar_t__,int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 int WASAPI_THREAD_SHUTDOWN ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;
 int set_thread_state (struct ao*,int ) ;
 int talloc_free (int ) ;
 int wasapi_change_uninit (struct ao*) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    MP_DBG(ao, "Uninit wasapi\n");
    struct wasapi_state *state = ao->priv;
    if (state->hWake)
        set_thread_state(ao, WASAPI_THREAD_SHUTDOWN);

    if (state->hAudioThread &&
        WaitForSingleObject(state->hAudioThread, INFINITE) != WAIT_OBJECT_0)
    {
        MP_ERR(ao, "Unexpected return value from WaitForSingleObject "
               "while waiting for audio thread to terminate\n");
    }

    SAFE_DESTROY(state->hInitDone, CloseHandle(state->hInitDone));
    SAFE_DESTROY(state->hWake, CloseHandle(state->hWake));
    SAFE_DESTROY(state->hAudioThread,CloseHandle(state->hAudioThread));

    wasapi_change_uninit(ao);

    talloc_free(state->deviceID);

    CoUninitialize();
    MP_DBG(ao, "Uninit wasapi done\n");
}
