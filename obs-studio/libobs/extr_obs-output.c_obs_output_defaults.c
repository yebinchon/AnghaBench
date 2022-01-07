
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output_info {int dummy; } ;
typedef int obs_data_t ;


 struct obs_output_info* find_output (char const*) ;
 int * get_defaults (struct obs_output_info const*) ;

obs_data_t *obs_output_defaults(const char *id)
{
 const struct obs_output_info *info = find_output(id);
 return (info) ? get_defaults(info) : ((void*)0);
}
