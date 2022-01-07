
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int control; } ;
typedef TYPE_1__ obs_service_t ;


 TYPE_1__* obs_weak_service_get_service (int ) ;

obs_service_t *obs_service_get_ref(obs_service_t *service)
{
 if (!service)
  return ((void*)0);

 return obs_weak_service_get_service(service->control);
}
