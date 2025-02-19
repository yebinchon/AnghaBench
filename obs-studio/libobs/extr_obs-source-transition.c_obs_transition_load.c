
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_12__ {char const* name; } ;
struct TYPE_13__ {int* transition_source_active; int transition_mode; int transition_scale_type; void* transition_cy; void* transition_cx; void* transition_alignment; struct TYPE_13__** transition_sources; TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;
typedef int obs_data_t ;
typedef scalar_t__ int64_t ;
typedef enum obs_transition_scale_type { ____Placeholder_obs_transition_scale_type } obs_transition_scale_type ;
typedef enum obs_transition_mode { ____Placeholder_obs_transition_mode } obs_transition_mode ;


 int LOG_WARNING ;
 int blog (int ,char*,char const*,char const*) ;
 int lock_transition (TYPE_2__*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 TYPE_2__* obs_get_source_by_name (char const*) ;
 int obs_source_add_active_child (TYPE_2__*,TYPE_2__*) ;
 int obs_source_release (TYPE_2__*) ;
 int recalculate_transition_matrices (TYPE_2__*) ;
 int recalculate_transition_size (TYPE_2__*) ;
 int unlock_transition (TYPE_2__*) ;

void obs_transition_load(obs_source_t *tr, obs_data_t *data)
{
 const char *name = obs_data_get_string(data, "transition_source_a");
 int64_t alignment = obs_data_get_int(data, "transition_alignment");
 int64_t mode = obs_data_get_int(data, "transition_mode");
 int64_t scale_type = obs_data_get_int(data, "transition_scale_type");
 int64_t cx = obs_data_get_int(data, "transition_cx");
 int64_t cy = obs_data_get_int(data, "transition_cy");
 obs_source_t *source = ((void*)0);

 if (name) {
  source = obs_get_source_by_name(name);
  if (source) {
   if (!obs_source_add_active_child(tr, source)) {
    blog(LOG_WARNING,
         "Cannot set transition '%s' "
         "to source '%s' due to "
         "infinite recursion",
         tr->context.name, name);
    obs_source_release(source);
    source = ((void*)0);
   }
  } else {
   blog(LOG_WARNING,
        "Failed to find source '%s' for "
        "transition '%s'",
        name, tr->context.name);
  }
 }

 lock_transition(tr);
 tr->transition_sources[0] = source;
 tr->transition_source_active[0] = 1;
 tr->transition_alignment = (uint32_t)alignment;
 tr->transition_mode = (enum obs_transition_mode)mode;
 tr->transition_scale_type = (enum obs_transition_scale_type)scale_type;
 tr->transition_cx = (uint32_t)cx;
 tr->transition_cy = (uint32_t)cy;
 unlock_transition(tr);

 recalculate_transition_size(tr);
 recalculate_transition_matrices(tr);
}
