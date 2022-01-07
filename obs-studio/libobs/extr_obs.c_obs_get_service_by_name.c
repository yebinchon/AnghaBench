
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_service_t ;
struct TYPE_3__ {int services_mutex; int first_service; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int * get_context_by_name (int *,char const*,int *,int ) ;
 TYPE_2__* obs ;
 int obs_service_addref_safe_ ;

obs_service_t *obs_get_service_by_name(const char *name)
{
 if (!obs)
  return ((void*)0);
 return get_context_by_name(&obs->data.first_service, name,
       &obs->data.services_mutex,
       obs_service_addref_safe_);
}
