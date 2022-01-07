
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct source_enum_data {void* member_1; int member_0; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_10__ {scalar_t__ type; int (* enum_active_sources ) (int ,int ,struct source_enum_data*) ;} ;
struct TYPE_11__ {TYPE_1__ context; TYPE_2__ info; } ;
typedef TYPE_3__ obs_source_t ;
typedef int obs_source_enum_proc_t ;


 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ;
 int data_valid (TYPE_3__*,char*) ;
 int enum_source_active_tree_callback ;
 int obs_source_addref (TYPE_3__*) ;
 int obs_source_release (TYPE_3__*) ;
 int obs_transition_enum_sources (TYPE_3__*,int ,struct source_enum_data*) ;
 int stub1 (int ,int ,struct source_enum_data*) ;

void obs_source_enum_active_tree(obs_source_t *source,
     obs_source_enum_proc_t enum_callback,
     void *param)
{
 struct source_enum_data data = {enum_callback, param};
 bool is_transition;

 if (!data_valid(source, "obs_source_enum_active_tree"))
  return;

 is_transition = source->info.type == OBS_SOURCE_TYPE_TRANSITION;
 if (!is_transition && !source->info.enum_active_sources)
  return;

 obs_source_addref(source);

 if (source->info.type == OBS_SOURCE_TYPE_TRANSITION)
  obs_transition_enum_sources(
   source, enum_source_active_tree_callback, &data);
 if (source->info.enum_active_sources)
  source->info.enum_active_sources(
   source->context.data, enum_source_active_tree_callback,
   &data);

 obs_source_release(source);
}
