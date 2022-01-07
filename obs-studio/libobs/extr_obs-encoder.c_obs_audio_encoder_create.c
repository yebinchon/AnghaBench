
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_encoder_t ;
typedef int obs_data_t ;


 int OBS_ENCODER_AUDIO ;
 int * create_encoder (char const*,int ,char const*,int *,size_t,int *) ;

obs_encoder_t *obs_audio_encoder_create(const char *id, const char *name,
     obs_data_t *settings, size_t mixer_idx,
     obs_data_t *hotkey_data)
{
 if (!name || !id)
  return ((void*)0);
 return create_encoder(id, OBS_ENCODER_AUDIO, name, settings, mixer_idx,
         hotkey_data);
}
