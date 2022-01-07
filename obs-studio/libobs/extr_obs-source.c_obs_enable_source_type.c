
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_info {int output_flags; } ;


 int OBS_SOURCE_CAP_DISABLED ;
 struct obs_source_info* get_source_info (char const*) ;

void obs_enable_source_type(const char *name, bool enable)
{
 struct obs_source_info *info = get_source_info(name);
 if (!info)
  return;

 if (enable)
  info->output_flags &= ~OBS_SOURCE_CAP_DISABLED;
 else
  info->output_flags |= OBS_SOURCE_CAP_DISABLED;
}
