#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct change_notify {int is_hotplug; int /*<<< orphan*/  pEnumerator; TYPE_1__ client; int /*<<< orphan*/  monitored; struct ao* ao; } ;
struct wasapi_state {int /*<<< orphan*/  deviceID; struct change_notify change; } ;
struct ao {struct wasapi_state* priv; } ;
typedef  int /*<<< orphan*/  IMMNotificationClient ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  CLSID_MMDeviceEnumerator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IMMDeviceEnumerator ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wasapi_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sIMMNotificationClientVtbl ; 
 int /*<<< orphan*/  FUNC7 (struct ao*) ; 

HRESULT FUNC8(struct ao *ao, bool is_hotplug)
{
    struct wasapi_state *state = ao->priv;
    struct change_notify *change = &state->change;
    HRESULT hr = FUNC0(&CLSID_MMDeviceEnumerator, NULL, CLSCTX_ALL,
                                  &IID_IMMDeviceEnumerator,
                                  (void **)&change->pEnumerator);
    FUNC1(hr);

    // so the callbacks can access the ao
    change->ao = ao;

    // whether or not this is the hotplug instance
    change->is_hotplug = is_hotplug;

    if (is_hotplug) {
        FUNC3(ao, "Monitoring for hotplug events\n");
    } else {
        // Get the device string to compare with the pwstrDeviceId
        change->monitored = state->deviceID;
        FUNC5(ao, "Monitoring changes in device %ls\n", change->monitored);
    }

    // COM voodoo to emulate c++ class
    change->client.lpVtbl = &sIMMNotificationClientVtbl;

    // register the change notification client
    hr = FUNC2(
        change->pEnumerator, (IMMNotificationClient *)change);
    FUNC1(hr);

    return hr;
exit_label:
    FUNC4(state, "Error setting up device change monitoring: %s\n",
           FUNC6(hr));
    FUNC7(ao);
    return hr;
}