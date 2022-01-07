
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int json_t ;


 int add_services (int *,int *,int,char const*) ;
 int obs_property_list_clear (int *) ;

__attribute__((used)) static void build_service_list(obs_property_t *list, json_t *root,
          bool show_all, const char *cur_service)
{
 obs_property_list_clear(list);
 add_services(list, root, show_all, cur_service);
}
