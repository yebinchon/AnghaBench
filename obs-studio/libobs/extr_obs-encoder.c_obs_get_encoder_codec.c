
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder_info {char const* codec; } ;


 struct obs_encoder_info* find_encoder (char const*) ;

const char *obs_get_encoder_codec(const char *id)
{
 struct obs_encoder_info *info = find_encoder(id);
 return info ? info->codec : ((void*)0);
}
