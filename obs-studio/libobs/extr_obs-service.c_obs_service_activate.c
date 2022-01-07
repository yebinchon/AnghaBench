
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int settings; int data; } ;
struct TYPE_3__ {int (* activate ) (int ,int ) ;} ;
struct obs_service {int active; TYPE_2__ context; TYPE_1__ info; int output; } ;


 int LOG_WARNING ;
 int blog (int ,char*,int ) ;
 int obs_service_get_name (struct obs_service*) ;
 int obs_service_valid (struct obs_service*,char*) ;
 int stub1 (int ,int ) ;

void obs_service_activate(struct obs_service *service)
{
 if (!obs_service_valid(service, "obs_service_activate"))
  return;
 if (!service->output) {
  blog(LOG_WARNING,
       "obs_service_deactivate: service '%s' "
       "is not assigned to an output",
       obs_service_get_name(service));
  return;
 }
 if (service->active)
  return;

 if (service->info.activate)
  service->info.activate(service->context.data,
           service->context.settings);
 service->active = 1;
}
