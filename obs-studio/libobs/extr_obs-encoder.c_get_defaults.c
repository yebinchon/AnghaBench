
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder_info {int type_data; int (* get_defaults2 ) (int *,int ) ;int (* get_defaults ) (int *) ;} ;
typedef int obs_data_t ;


 int * obs_data_create () ;
 int stub1 (int *) ;
 int stub2 (int *,int ) ;

__attribute__((used)) static inline obs_data_t *get_defaults(const struct obs_encoder_info *info)
{
 obs_data_t *settings = obs_data_create();
 if (info->get_defaults) {
  info->get_defaults(settings);
 }
 if (info->get_defaults2) {
  info->get_defaults2(settings, info->type_data);
 }
 return settings;
}
