
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ type; int (* get_width ) (scalar_t__) ;} ;
struct TYPE_7__ {int async_width; scalar_t__ async_active; struct TYPE_7__* filter_target; TYPE_1__ context; TYPE_2__ info; scalar_t__ enabled; int transition_actual_cx; int filter_parent; } ;
typedef TYPE_3__ obs_source_t ;


 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static uint32_t get_base_width(const obs_source_t *source)
{
 bool is_filter = !!source->filter_parent;
 bool func_valid = source->context.data && source->info.get_width;

 if (source->info.type == OBS_SOURCE_TYPE_TRANSITION) {
  return source->enabled ? source->transition_actual_cx : 0;

 } else if (func_valid && (!is_filter || source->enabled)) {
  return source->info.get_width(source->context.data);

 } else if (is_filter) {
  return get_base_width(source->filter_target);
 }

 return source->async_active ? source->async_width : 0;
}
