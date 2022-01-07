
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_output_t ;
struct TYPE_3__ {int outputs_mutex; int first_output; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int * get_context_by_name (int *,char const*,int *,int ) ;
 TYPE_2__* obs ;
 int obs_output_addref_safe_ ;

obs_output_t *obs_get_output_by_name(const char *name)
{
 if (!obs)
  return ((void*)0);
 return get_context_by_name(&obs->data.first_output, name,
       &obs->data.outputs_mutex,
       obs_output_addref_safe_);
}
