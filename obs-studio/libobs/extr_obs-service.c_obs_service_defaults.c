
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_service_info {int dummy; } ;
typedef int obs_data_t ;


 struct obs_service_info* find_service (char const*) ;
 int * get_defaults (struct obs_service_info const*) ;

obs_data_t *obs_service_defaults(const char *id)
{
 const struct obs_service_info *info = find_service(id);
 return (info) ? get_defaults(info) : ((void*)0);
}
