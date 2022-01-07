
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int settings; int data; } ;
struct TYPE_6__ {int (* update ) (int ,int ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_service_t ;
typedef int obs_data_t ;


 int obs_data_apply (int ,int *) ;
 int obs_service_valid (TYPE_3__*,char*) ;
 int stub1 (int ,int ) ;

void obs_service_update(obs_service_t *service, obs_data_t *settings)
{
 if (!obs_service_valid(service, "obs_service_update"))
  return;

 obs_data_apply(service->context.settings, settings);

 if (service->info.update)
  service->info.update(service->context.data,
         service->context.settings);
}
