
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_service_info {int (* get_defaults ) (int *) ;} ;
typedef int obs_data_t ;


 int * obs_data_create () ;
 int stub1 (int *) ;

__attribute__((used)) static inline obs_data_t *get_defaults(const struct obs_service_info *info)
{
 obs_data_t *settings = obs_data_create();
 if (info->get_defaults)
  info->get_defaults(settings);
 return settings;
}
