
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_encoder_t ;
typedef int obs_data_t ;


 int OBS_ENCODER_VIDEO ;
 int * create_encoder (char const*,int ,char const*,int *,int ,int *) ;

obs_encoder_t *obs_video_encoder_create(const char *id, const char *name,
     obs_data_t *settings,
     obs_data_t *hotkey_data)
{
 if (!name || !id)
  return ((void*)0);
 return create_encoder(id, OBS_ENCODER_VIDEO, name, settings, 0,
         hotkey_data);
}
