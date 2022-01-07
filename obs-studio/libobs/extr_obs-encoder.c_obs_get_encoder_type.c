
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder_info {int type; } ;
typedef enum obs_encoder_type { ____Placeholder_obs_encoder_type } obs_encoder_type ;


 int OBS_ENCODER_AUDIO ;
 struct obs_encoder_info* find_encoder (char const*) ;

enum obs_encoder_type obs_get_encoder_type(const char *id)
{
 struct obs_encoder_info *info = find_encoder(id);
 return info ? info->type : OBS_ENCODER_AUDIO;
}
