
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* output; scalar_t__ active; } ;
typedef TYPE_1__ obs_service_t ;
struct TYPE_8__ {TYPE_1__* service; } ;
typedef TYPE_2__ obs_output_t ;


 scalar_t__ active (TYPE_2__*) ;
 int obs_output_valid (TYPE_2__*,char*) ;

void obs_output_set_service(obs_output_t *output, obs_service_t *service)
{
 if (!obs_output_valid(output, "obs_output_set_service"))
  return;
 if (active(output) || !service || service->active)
  return;

 if (service->output)
  service->output->service = ((void*)0);

 output->service = service;
 service->output = output;
}
