
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output_info {char const* (* get_name ) (int ) ;int type_data; } ;


 struct obs_output_info* find_output (char const*) ;
 char const* stub1 (int ) ;

const char *obs_output_get_display_name(const char *id)
{
 const struct obs_output_info *info = find_output(id);
 return (info != ((void*)0)) ? info->get_name(info->type_data) : ((void*)0);
}
