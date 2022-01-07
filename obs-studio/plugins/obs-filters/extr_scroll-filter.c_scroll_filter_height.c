
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scroll_filter_data {int cy; scalar_t__ limit_cy; int context; } ;
typedef int obs_source_t ;


 int * obs_filter_get_target (int ) ;
 int obs_source_get_base_height (int *) ;

__attribute__((used)) static uint32_t scroll_filter_height(void *data)
{
 struct scroll_filter_data *filter = data;
 obs_source_t *target = obs_filter_get_target(filter->context);

 return filter->limit_cy ? filter->cy
    : obs_source_get_base_height(target);
}
