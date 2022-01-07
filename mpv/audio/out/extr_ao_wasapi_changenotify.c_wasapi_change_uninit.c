
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lpVtbl; } ;
struct change_notify {scalar_t__ pEnumerator; TYPE_1__ client; } ;
struct wasapi_state {struct change_notify change; } ;
struct ao {struct wasapi_state* priv; } ;
typedef int IMMNotificationClient ;


 int IMMDeviceEnumerator_UnregisterEndpointNotificationCallback (scalar_t__,int *) ;
 int SAFE_RELEASE (scalar_t__) ;

void wasapi_change_uninit(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    struct change_notify *change = &state->change;

    if (change->pEnumerator && change->client.lpVtbl) {
        IMMDeviceEnumerator_UnregisterEndpointNotificationCallback(
            change->pEnumerator, (IMMNotificationClient *)change);
    }

    SAFE_RELEASE(change->pEnumerator);
}
