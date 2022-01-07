
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder_info {int dummy; } ;
typedef int obs_data_t ;


 struct obs_encoder_info* find_encoder (char const*) ;
 int * get_defaults (struct obs_encoder_info const*) ;

obs_data_t *obs_encoder_defaults(const char *id)
{
 const struct obs_encoder_info *info = find_encoder(id);
 return (info) ? get_defaults(info) : ((void*)0);
}
