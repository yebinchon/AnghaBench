
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int log; } ;
struct ao {int log; struct wasapi_state* priv; } ;
typedef int HRESULT ;


 int COINIT_MULTITHREADED ;
 int CoInitializeEx (int *,int ) ;
 int EXIT_ON_ERROR (int ) ;
 int MP_DBG (struct ao*,char*) ;
 int MP_FATAL (struct wasapi_state*,char*,int ) ;
 int hotplug_uninit (struct ao*) ;
 int mp_HRESULT_to_str (int ) ;
 int wasapi_change_init (struct ao*,int) ;

__attribute__((used)) static int hotplug_init(struct ao *ao)
{
    MP_DBG(ao, "Hotplug init\n");
    struct wasapi_state *state = ao->priv;
    state->log = ao->log;
    CoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    HRESULT hr = wasapi_change_init(ao, 1);
    EXIT_ON_ERROR(hr);

    return 0;
    exit_label:
    MP_FATAL(state, "Error setting up audio hotplug: %s\n", mp_HRESULT_to_str(hr));
    hotplug_uninit(ao);
    return -1;
}
