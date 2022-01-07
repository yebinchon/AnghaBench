
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ obs_weak_service_t ;
struct TYPE_7__ {TYPE_1__* control; } ;
typedef TYPE_2__ obs_service_t ;


 scalar_t__ obs_ref_release (int *) ;
 int obs_service_destroy (TYPE_2__*) ;
 int obs_weak_service_release (TYPE_1__*) ;

void obs_service_release(obs_service_t *service)
{
 if (!service)
  return;

 obs_weak_service_t *control = service->control;
 if (obs_ref_release(&control->ref)) {



  obs_service_destroy(service);
  obs_weak_service_release(control);
 }
}
