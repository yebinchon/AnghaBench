
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int dummy; } ;
typedef int obs_data_t ;


 struct obs_data_item* obs_data_item_byname (int *,char*) ;
 char* obs_data_item_get_string (struct obs_data_item*) ;
 int obs_data_item_release (struct obs_data_item**) ;
 int obs_data_release (int *) ;

__attribute__((used)) static inline bool get_option(obs_data_t *data, const char **option)
{
 if (!option)
  return 0;

 struct obs_data_item *opt = obs_data_item_byname(data, "option");
 if (!opt)
  return 0;

 *option = obs_data_item_get_string(opt);
 obs_data_item_release(&opt);

 obs_data_release(data);

 return 1;
}
