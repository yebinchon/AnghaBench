
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int render_cb; int device; } ;
struct ao {struct priv* priv; } ;
typedef int OSStatus ;


 int AudioDeviceStop (int ,int ) ;
 int CHECK_CA_WARN (char*) ;

__attribute__((used)) static void audio_pause(struct ao *ao)
{
    struct priv *p = ao->priv;

    OSStatus err = AudioDeviceStop(p->device, p->render_cb);
    CHECK_CA_WARN("can't stop audio device");
}
