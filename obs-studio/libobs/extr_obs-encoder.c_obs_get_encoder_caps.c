
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct obs_encoder_info {int caps; } ;


 struct obs_encoder_info* find_encoder (char const*) ;

uint32_t obs_get_encoder_caps(const char *encoder_id)
{
 struct obs_encoder_info *info = find_encoder(encoder_id);
 return info ? info->caps : 0;
}
