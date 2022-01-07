
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_weak_service_t ;
struct TYPE_3__ {int * control; } ;
typedef TYPE_1__ obs_service_t ;


 int obs_weak_service_addref (int *) ;

obs_weak_service_t *obs_service_get_weak_service(obs_service_t *service)
{
 if (!service)
  return ((void*)0);

 obs_weak_service_t *weak = service->control;
 obs_weak_service_addref(weak);
 return weak;
}
