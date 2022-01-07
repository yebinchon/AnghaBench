
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* deactivate ) (int ) ;} ;
struct obs_service {int active; int * output; scalar_t__ destroy; TYPE_2__ context; TYPE_1__ info; } ;


 int LOG_WARNING ;
 int actually_destroy_service (struct obs_service*) ;
 int blog (int ,char*,int ) ;
 int obs_service_get_name (struct obs_service*) ;
 int obs_service_valid (struct obs_service*,char*) ;
 int stub1 (int ) ;

void obs_service_deactivate(struct obs_service *service, bool remove)
{
 if (!obs_service_valid(service, "obs_service_deactivate"))
  return;
 if (!service->output) {
  blog(LOG_WARNING,
       "obs_service_deactivate: service '%s' "
       "is not assigned to an output",
       obs_service_get_name(service));
  return;
 }

 if (!service->active)
  return;

 if (service->info.deactivate)
  service->info.deactivate(service->context.data);
 service->active = 0;

 if (service->destroy)
  actually_destroy_service(service);
 else if (remove)
  service->output = ((void*)0);
}
