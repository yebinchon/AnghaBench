
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int audio_unit; } ;
struct ao {struct priv* priv; } ;
typedef int OSStatus ;


 int AudioOutputUnitStart (int ) ;
 int CHECK_CA_WARN (char*) ;

__attribute__((used)) static void start(struct ao *ao)
{
    struct priv *p = ao->priv;
    OSStatus err = AudioOutputUnitStart(p->audio_unit);
    CHECK_CA_WARN("can't start audio unit");
}
