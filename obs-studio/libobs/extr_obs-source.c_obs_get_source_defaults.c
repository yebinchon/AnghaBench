
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_info {int dummy; } ;
typedef int obs_data_t ;


 int * get_defaults (struct obs_source_info const*) ;
 struct obs_source_info* get_source_info (char const*) ;

obs_data_t *obs_get_source_defaults(const char *id)
{
 const struct obs_source_info *info = get_source_info(id);
 return info ? get_defaults(info) : ((void*)0);
}
