
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct change_notify {int is_hotplug; int pEnumerator; TYPE_1__ client; int monitored; struct ao* ao; } ;
struct wasapi_state {int deviceID; struct change_notify change; } ;
struct ao {struct wasapi_state* priv; } ;
typedef int IMMNotificationClient ;
typedef int HRESULT ;


 int CLSCTX_ALL ;
 int CLSID_MMDeviceEnumerator ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int EXIT_ON_ERROR (int ) ;
 int IID_IMMDeviceEnumerator ;
 int IMMDeviceEnumerator_RegisterEndpointNotificationCallback (int ,int *) ;
 int MP_DBG (struct ao*,char*) ;
 int MP_ERR (struct wasapi_state*,char*,int ) ;
 int MP_VERBOSE (struct ao*,char*,int ) ;
 int mp_HRESULT_to_str (int ) ;
 int sIMMNotificationClientVtbl ;
 int wasapi_change_uninit (struct ao*) ;

HRESULT wasapi_change_init(struct ao *ao, bool is_hotplug)
{
    struct wasapi_state *state = ao->priv;
    struct change_notify *change = &state->change;
    HRESULT hr = CoCreateInstance(&CLSID_MMDeviceEnumerator, ((void*)0), CLSCTX_ALL,
                                  &IID_IMMDeviceEnumerator,
                                  (void **)&change->pEnumerator);
    EXIT_ON_ERROR(hr);


    change->ao = ao;


    change->is_hotplug = is_hotplug;

    if (is_hotplug) {
        MP_DBG(ao, "Monitoring for hotplug events\n");
    } else {

        change->monitored = state->deviceID;
        MP_VERBOSE(ao, "Monitoring changes in device %ls\n", change->monitored);
    }


    change->client.lpVtbl = &sIMMNotificationClientVtbl;


    hr = IMMDeviceEnumerator_RegisterEndpointNotificationCallback(
        change->pEnumerator, (IMMNotificationClient *)change);
    EXIT_ON_ERROR(hr);

    return hr;
exit_label:
    MP_ERR(state, "Error setting up device change monitoring: %s\n",
           mp_HRESULT_to_str(hr));
    wasapi_change_uninit(ao);
    return hr;
}
