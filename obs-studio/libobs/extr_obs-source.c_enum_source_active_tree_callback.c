
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct source_enum_data {int param; int (* enum_callback ) (TYPE_3__*,TYPE_3__*,int ) ;} ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_14__ {scalar_t__ type; int (* enum_active_sources ) (scalar_t__,void (*) (TYPE_3__*,TYPE_3__*,void*),struct source_enum_data*) ;} ;
struct TYPE_15__ {TYPE_1__ context; TYPE_2__ info; } ;
typedef TYPE_3__ obs_source_t ;


 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ;
 int obs_transition_enum_sources (TYPE_3__*,void (*) (TYPE_3__*,TYPE_3__*,void*),void*) ;
 int stub1 (scalar_t__,void (*) (TYPE_3__*,TYPE_3__*,void*),struct source_enum_data*) ;
 int stub2 (TYPE_3__*,TYPE_3__*,int ) ;

__attribute__((used)) static void enum_source_active_tree_callback(obs_source_t *parent,
          obs_source_t *child, void *param)
{
 struct source_enum_data *data = param;
 bool is_transition = child->info.type == OBS_SOURCE_TYPE_TRANSITION;

 if (is_transition)
  obs_transition_enum_sources(
   child, enum_source_active_tree_callback, param);
 if (child->info.enum_active_sources) {
  if (child->context.data) {
   child->info.enum_active_sources(
    child->context.data,
    enum_source_active_tree_callback, data);
  }
 }

 data->enum_callback(parent, child, data->param);
}
