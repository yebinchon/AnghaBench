
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct obs_source_info {int output_flags; } ;


 struct obs_source_info* get_source_info (char const*) ;

uint32_t obs_get_source_output_flags(const char *id)
{
 const struct obs_source_info *info = get_source_info(id);
 return info ? info->output_flags : 0;
}
