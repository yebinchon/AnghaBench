
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ao {int dummy; } ;
struct TYPE_3__ {scalar_t__ member_0; int member_2; int member_1; } ;
typedef scalar_t__ OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;


 scalar_t__ AudioObjectAddPropertyListener (int ,TYPE_1__*,int ,void*) ;
 int MP_ARRAY_SIZE (scalar_t__*) ;
 int MP_ERR (struct ao*,char*,char*,char*) ;
 int hotplug_cb ;
 scalar_t__* hotplug_properties ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;
 char* mp_tag_str (scalar_t__) ;
 scalar_t__ noErr ;
 int reinit_device (struct ao*) ;

__attribute__((used)) static int hotplug_init(struct ao *ao)
{
    if (!reinit_device(ao))
        goto coreaudio_error;

    OSStatus err = noErr;
    for (int i = 0; i < MP_ARRAY_SIZE(hotplug_properties); i++) {
        AudioObjectPropertyAddress addr = {
            hotplug_properties[i],
            kAudioObjectPropertyScopeGlobal,
            kAudioObjectPropertyElementMaster
        };
        err = AudioObjectAddPropertyListener(
            kAudioObjectSystemObject, &addr, hotplug_cb, (void *)ao);
        if (err != noErr) {
            char *c1 = mp_tag_str(hotplug_properties[i]);
            char *c2 = mp_tag_str(err);
            MP_ERR(ao, "failed to set device listener %s (%s)", c1, c2);
            goto coreaudio_error;
        }
    }

    return 0;

coreaudio_error:
    return -1;
}
