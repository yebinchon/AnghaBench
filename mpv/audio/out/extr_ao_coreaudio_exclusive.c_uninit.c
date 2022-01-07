
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int hog_pid; int device; int changed_mixing; int original_asbd; int stream; int render_cb; } ;
struct ao {struct priv* priv; } ;
typedef int OSStatus ;


 int AudioDeviceDestroyIOProcID (int ,int ) ;
 int AudioDeviceStop (int ,int ) ;
 int CHECK_CA_WARN (char*) ;
 int MP_WARN (struct ao*,char*) ;
 int ca_change_physical_format_sync (struct ao*,int ,int ) ;
 int ca_enable_mixing (struct ao*,int ,int ) ;
 int ca_unlock_device (int ,int *) ;
 int enable_property_listener (struct ao*,int) ;
 int noErr ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *p = ao->priv;
    OSStatus err = noErr;

    err = enable_property_listener(ao, 0);
    CHECK_CA_WARN("can't remove device listener, this may cause a crash");

    err = AudioDeviceStop(p->device, p->render_cb);
    CHECK_CA_WARN("failed to stop audio device");

    err = AudioDeviceDestroyIOProcID(p->device, p->render_cb);
    CHECK_CA_WARN("failed to remove device render callback");

    if (!ca_change_physical_format_sync(ao, p->stream, p->original_asbd))
        MP_WARN(ao, "can't revert to original device format\n");

    err = ca_enable_mixing(ao, p->device, p->changed_mixing);
    CHECK_CA_WARN("can't re-enable mixing");

    err = ca_unlock_device(p->device, &p->hog_pid);
    CHECK_CA_WARN("can't release hog mode");
}
