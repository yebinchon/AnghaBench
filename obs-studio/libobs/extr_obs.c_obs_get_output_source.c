
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int obs_source_t ;
struct TYPE_3__ {int main_view; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 TYPE_2__* obs ;
 int * obs_view_get_source (int *,int ) ;

obs_source_t *obs_get_output_source(uint32_t channel)
{
 if (!obs)
  return ((void*)0);
 return obs_view_get_source(&obs->data.main_view, channel);
}
