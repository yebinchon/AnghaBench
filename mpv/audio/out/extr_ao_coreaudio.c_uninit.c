
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mFormatID; } ;
struct priv {TYPE_1__ original_asbd; int original_asbd_stream; int audio_unit; } ;
struct ao {struct priv* priv; } ;
typedef int OSStatus ;


 int AudioComponentInstanceDispose (int ) ;
 int AudioOutputUnitStop (int ) ;
 int AudioUnitUninitialize (int ) ;
 int CA_SET (int ,int ,TYPE_1__*) ;
 int CHECK_CA_WARN (char*) ;
 int kAudioStreamPropertyPhysicalFormat ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *p = ao->priv;
    AudioOutputUnitStop(p->audio_unit);
    AudioUnitUninitialize(p->audio_unit);
    AudioComponentInstanceDispose(p->audio_unit);

    if (p->original_asbd.mFormatID) {
        OSStatus err = CA_SET(p->original_asbd_stream,
                              kAudioStreamPropertyPhysicalFormat,
                              &p->original_asbd);
        CHECK_CA_WARN("could not restore physical stream format");
    }
}
