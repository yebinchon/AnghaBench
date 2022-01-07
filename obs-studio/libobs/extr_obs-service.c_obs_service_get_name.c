
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* name; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_service_t ;


 scalar_t__ obs_service_valid (TYPE_2__ const*,char*) ;

const char *obs_service_get_name(const obs_service_t *service)
{
 return obs_service_valid(service, "obs_service_get_name")
         ? service->context.name
         : ((void*)0);
}
