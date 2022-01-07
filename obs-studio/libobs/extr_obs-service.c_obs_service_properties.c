
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int settings; int data; } ;
struct TYPE_6__ {int * (* get_properties ) (int ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_service_t ;
typedef int obs_properties_t ;


 int obs_properties_apply_settings (int *,int ) ;
 int obs_service_valid (TYPE_3__ const*,char*) ;
 int * stub1 (int ) ;

obs_properties_t *obs_service_properties(const obs_service_t *service)
{
 if (!obs_service_valid(service, "obs_service_properties"))
  return ((void*)0);

 if (service->info.get_properties) {
  obs_properties_t *props;
  props = service->info.get_properties(service->context.data);
  obs_properties_apply_settings(props, service->context.settings);
  return props;
 }

 return ((void*)0);
}
