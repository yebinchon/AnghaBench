
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* filter_parent; } ;
typedef TYPE_1__ obs_source_t ;


 scalar_t__ obs_ptr_valid (TYPE_1__ const*,char*) ;

obs_source_t *obs_filter_get_parent(const obs_source_t *filter)
{
 return obs_ptr_valid(filter, "obs_filter_get_parent")
         ? filter->filter_parent
         : ((void*)0);
}
