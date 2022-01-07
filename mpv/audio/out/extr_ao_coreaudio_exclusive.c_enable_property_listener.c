
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct priv {int device; } ;
struct ao {struct priv* priv; } ;
struct TYPE_4__ {int mSelector; int mElement; int mScope; } ;
typedef scalar_t__ OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioDeviceID ;


 scalar_t__ AudioObjectAddPropertyListener (int ,TYPE_1__*,int ,struct ao*) ;
 scalar_t__ AudioObjectRemovePropertyListener (int ,TYPE_1__*,int ,struct ao*) ;
 int MP_ARRAY_SIZE (int *) ;
 int assert (int) ;
 int kAudioDevicePropertyDeviceHasChanged ;
 int kAudioHardwarePropertyDevices ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;
 scalar_t__ noErr ;
 int property_listener_cb ;

__attribute__((used)) static OSStatus enable_property_listener(struct ao *ao, bool enabled)
{
    struct priv *p = ao->priv;

    uint32_t selectors[] = {kAudioDevicePropertyDeviceHasChanged,
                            kAudioHardwarePropertyDevices};
    AudioDeviceID devs[] = {p->device,
                            kAudioObjectSystemObject};
    assert(MP_ARRAY_SIZE(selectors) == MP_ARRAY_SIZE(devs));

    OSStatus status = noErr;
    for (int n = 0; n < MP_ARRAY_SIZE(devs); n++) {
        AudioObjectPropertyAddress addr = {
            .mScope = kAudioObjectPropertyScopeGlobal,
            .mElement = kAudioObjectPropertyElementMaster,
            .mSelector = selectors[n],
        };
        AudioDeviceID device = devs[n];

        OSStatus status2;
        if (enabled) {
            status2 = AudioObjectAddPropertyListener(
                device, &addr, property_listener_cb, ao);
        } else {
            status2 = AudioObjectRemovePropertyListener(
                device, &addr, property_listener_cb, ao);
        }
        if (status == noErr)
            status = status2;
    }

    return status;
}
