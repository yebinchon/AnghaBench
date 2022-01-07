
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int audio_unit; } ;
struct ao_control_vol {double left; double right; } ;
struct ao {struct priv* priv; } ;
typedef int OSStatus ;


 int AudioUnitSetParameter (int ,int ,int ,int ,float,int ) ;
 int CHECK_CA_ERROR (char*) ;
 int CONTROL_ERROR ;
 int CONTROL_TRUE ;
 int kAudioUnitScope_Global ;
 int kHALOutputParam_Volume ;

__attribute__((used)) static int set_volume(struct ao *ao, struct ao_control_vol *vol) {
    struct priv *p = ao->priv;
    float auvol = (vol->left + vol->right) / 200.0;
    OSStatus err =
        AudioUnitSetParameter(p->audio_unit, kHALOutputParam_Volume,
                              kAudioUnitScope_Global, 0, auvol, 0);
    CHECK_CA_ERROR("could not set HAL output volume");
    return CONTROL_TRUE;
coreaudio_error:
    return CONTROL_ERROR;
}
