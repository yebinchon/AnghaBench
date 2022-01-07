
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* supports_multitrack ) (int ) ;} ;
struct obs_service {TYPE_2__ context; TYPE_1__ info; } ;
struct obs_output {struct obs_service* service; } ;


 int stub1 (int ) ;

__attribute__((used)) static inline bool service_supports_multitrack(const struct obs_output *output)
{
 const struct obs_service *service = output->service;

 if (!service || !service->info.supports_multitrack) {
  return 0;
 }

 return service->info.supports_multitrack(service->context.data);
}
