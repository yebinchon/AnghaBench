
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {int transition_cy; int transition_cx; scalar_t__ transition_scale_type; scalar_t__ transition_mode; int transition_alignment; TYPE_1__ context; struct TYPE_8__** transition_sources; } ;
typedef TYPE_2__ obs_source_t ;
typedef int obs_data_t ;
typedef int int64_t ;


 int lock_transition (TYPE_2__*) ;
 int obs_data_set_int (int *,char*,int ) ;
 int obs_data_set_string (int *,char*,char*) ;
 scalar_t__ transition_active (TYPE_2__*) ;
 int unlock_transition (TYPE_2__*) ;

void obs_transition_save(obs_source_t *tr, obs_data_t *data)
{
 obs_source_t *child;

 lock_transition(tr);
 child = transition_active(tr) ? tr->transition_sources[1]
          : tr->transition_sources[0];

 obs_data_set_string(data, "transition_source_a",
       child ? child->context.name : "");
 obs_data_set_int(data, "transition_alignment",
    tr->transition_alignment);
 obs_data_set_int(data, "transition_mode", (int64_t)tr->transition_mode);
 obs_data_set_int(data, "transition_scale_type",
    (int64_t)tr->transition_scale_type);
 obs_data_set_int(data, "transition_cx", tr->transition_cx);
 obs_data_set_int(data, "transition_cy", tr->transition_cy);
 unlock_transition(tr);
}
