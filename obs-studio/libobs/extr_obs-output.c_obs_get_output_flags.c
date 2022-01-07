
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct obs_output_info {int flags; } ;


 struct obs_output_info* find_output (char const*) ;

uint32_t obs_get_output_flags(const char *id)
{
 const struct obs_output_info *info = find_output(id);
 return info ? info->flags : 0;
}
