
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_info {char const* (* get_name ) (int ) ;int type_data; } ;


 struct obs_source_info* get_source_info (char const*) ;
 char const* stub1 (int ) ;

const char *obs_source_get_display_name(const char *id)
{
 const struct obs_source_info *info = get_source_info(id);
 return (info != ((void*)0)) ? info->get_name(info->type_data) : ((void*)0);
}
