
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* type_data; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_service_t ;


 scalar_t__ obs_service_valid (TYPE_2__*,char*) ;

void *obs_service_get_type_data(obs_service_t *service)
{
 return obs_service_valid(service, "obs_service_get_type_data")
         ? service->info.type_data
         : ((void*)0);
}
