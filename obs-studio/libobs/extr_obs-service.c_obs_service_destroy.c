
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int destroy; int active; int context; } ;
typedef TYPE_1__ obs_service_t ;


 int actually_destroy_service (TYPE_1__*) ;
 int obs_context_data_remove (int *) ;

void obs_service_destroy(obs_service_t *service)
{
 if (service) {
  obs_context_data_remove(&service->context);

  service->destroy = 1;



  if (!service->active)
   actually_destroy_service(service);
 }
}
