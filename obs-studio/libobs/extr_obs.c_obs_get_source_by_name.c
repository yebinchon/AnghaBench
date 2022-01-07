
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_source_t ;
struct TYPE_3__ {int sources_mutex; int first_source; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int * get_context_by_name (int *,char const*,int *,int ) ;
 TYPE_2__* obs ;
 int obs_source_addref_safe_ ;

obs_source_t *obs_get_source_by_name(const char *name)
{
 if (!obs)
  return ((void*)0);
 return get_context_by_name(&obs->data.first_source, name,
       &obs->data.sources_mutex,
       obs_source_addref_safe_);
}
