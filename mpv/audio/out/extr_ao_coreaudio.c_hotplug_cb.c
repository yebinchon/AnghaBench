
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;
typedef int UInt32 ;
typedef int OSStatus ;
typedef int AudioObjectPropertyAddress ;
typedef int AudioObjectID ;


 int MP_VERBOSE (struct ao*,char*) ;
 int ao_hotplug_event (struct ao*) ;
 int noErr ;
 int reinit_device (struct ao*) ;

__attribute__((used)) static OSStatus hotplug_cb(AudioObjectID id, UInt32 naddr,
                           const AudioObjectPropertyAddress addr[],
                           void *ctx)
{
    struct ao *ao = ctx;
    MP_VERBOSE(ao, "Handling potential hotplug event...\n");
    reinit_device(ao);
    ao_hotplug_event(ao);
    return noErr;
}
