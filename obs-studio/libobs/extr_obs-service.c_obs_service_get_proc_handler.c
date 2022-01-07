
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int proc_handler_t ;
struct TYPE_5__ {int * procs; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_service_t ;


 scalar_t__ obs_service_valid (TYPE_2__ const*,char*) ;

proc_handler_t *obs_service_get_proc_handler(const obs_service_t *service)
{
 return obs_service_valid(service, "obs_service_get_proc_handler")
         ? service->context.procs
         : ((void*)0);
}
