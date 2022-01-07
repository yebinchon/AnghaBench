
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {char const* (* get_output_type ) (int ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_service_t ;


 int obs_service_valid (TYPE_3__ const*,char*) ;
 char const* stub1 (int ) ;

const char *obs_service_get_output_type(const obs_service_t *service)
{
 if (!obs_service_valid(service, "obs_service_get_output_type"))
  return ((void*)0);

 if (service->info.get_output_type)
  return service->info.get_output_type(service->context.data);
 return ((void*)0);
}
