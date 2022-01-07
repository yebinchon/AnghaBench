
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int audio_unit; } ;
struct ao_control_vol {float left; float right; } ;
struct ao {struct priv* priv; } ;
typedef int OSStatus ;


 int AudioUnitGetParameter (int ,int ,int ,int ,float*) ;
 int CHECK_CA_ERROR (char*) ;
 int CONTROL_ERROR ;
 int CONTROL_TRUE ;
 int kAudioUnitScope_Global ;
 int kHALOutputParam_Volume ;

__attribute__((used)) static int get_volume(struct ao *ao, struct ao_control_vol *vol) {
    struct priv *p = ao->priv;
    float auvol;
    OSStatus err =
        AudioUnitGetParameter(p->audio_unit, kHALOutputParam_Volume,
                              kAudioUnitScope_Global, 0, &auvol);

    CHECK_CA_ERROR("could not get HAL output volume");
    vol->left = vol->right = auvol * 100.0;
    return CONTROL_TRUE;
coreaudio_error:
    return CONTROL_ERROR;
}
