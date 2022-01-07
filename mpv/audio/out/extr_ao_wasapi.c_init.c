
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int opt_exclusive; int init_ok; void* hInitDone; int hAudioThread; int dispatch; void* hWake; scalar_t__ deviceID; int log; } ;
struct ao {int init_flags; int probing; int log; struct wasapi_state* priv; } ;


 int AO_INIT_EXCLUSIVE ;
 int AudioThread ;
 int COINIT_MULTITHREADED ;
 int CloseHandle (void*) ;
 int CoInitializeEx (int *,int ) ;
 void* CreateEventW (int *,int ,int ,int *) ;
 int CreateThread (int *,int ,int *,struct ao*,int ,int *) ;
 int FALSE ;
 int INFINITE ;
 int MP_DBG (struct ao*,char*) ;
 int MP_FATAL (struct ao*,char*) ;
 int SAFE_DESTROY (void*,int ) ;
 int WaitForSingleObject (void*,int ) ;
 int mp_dispatch_create (struct wasapi_state*) ;
 int mp_dispatch_set_wakeup_fn (int ,int ,struct ao*) ;
 int thread_wakeup ;
 int uninit (struct ao*) ;
 int wasapi_change_init (struct ao*,int) ;
 scalar_t__ wasapi_find_deviceID (struct ao*) ;

__attribute__((used)) static int init(struct ao *ao)
{
    MP_DBG(ao, "Init wasapi\n");
    CoInitializeEx(((void*)0), COINIT_MULTITHREADED);

    struct wasapi_state *state = ao->priv;
    state->log = ao->log;

    state->opt_exclusive |= ao->init_flags & AO_INIT_EXCLUSIVE;


    state->deviceID = wasapi_find_deviceID(ao);
    if (!state->deviceID) {
        uninit(ao);
        return -1;
    }


    if (state->deviceID)
        wasapi_change_init(ao, 0);

    state->hInitDone = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    state->hWake = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    if (!state->hInitDone || !state->hWake) {
        MP_FATAL(ao, "Error creating events\n");
        uninit(ao);
        return -1;
    }

    state->dispatch = mp_dispatch_create(state);
    mp_dispatch_set_wakeup_fn(state->dispatch, thread_wakeup, ao);

    state->init_ok = 0;
    state->hAudioThread = CreateThread(((void*)0), 0, &AudioThread, ao, 0, ((void*)0));
    if (!state->hAudioThread) {
        MP_FATAL(ao, "Failed to create audio thread\n");
        uninit(ao);
        return -1;
    }

    WaitForSingleObject(state->hInitDone, INFINITE);
    SAFE_DESTROY(state->hInitDone,CloseHandle(state->hInitDone));
    if (!state->init_ok) {
        if (!ao->probing)
            MP_FATAL(ao, "Received failure from audio thread\n");
        uninit(ao);
        return -1;
    }

    MP_DBG(ao, "Init wasapi done\n");
    return 0;
}
