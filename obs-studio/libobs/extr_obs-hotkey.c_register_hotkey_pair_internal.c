
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct obs_context_data {int dummy; } ;
typedef int obs_hotkey_registerer_t ;
struct TYPE_11__ {int pair_id; void** id; } ;
typedef TYPE_4__ obs_hotkey_pair_t ;
typedef int obs_hotkey_pair_id ;
typedef int obs_hotkey_active_func ;
struct TYPE_9__ {TYPE_1__* array; } ;
struct TYPE_10__ {TYPE_2__ hotkeys; } ;
struct TYPE_12__ {TYPE_3__ hotkeys; } ;
struct TYPE_8__ {void* pair_partner_id; } ;


 int OBS_INVALID_HOTKEY_PAIR_ID ;
 TYPE_4__* create_hotkey_pair (struct obs_context_data*,int ,int ,void*,void*) ;
 scalar_t__ find_id (void*,size_t*) ;
 int lock () ;
 TYPE_6__* obs ;
 int obs_hotkey_pair_first_func ;
 int obs_hotkey_pair_second_func ;
 void* obs_hotkey_register_internal (int ,void*,struct obs_context_data*,char const*,char const*,int ,TYPE_4__*) ;
 int unlock () ;

__attribute__((used)) static obs_hotkey_pair_id register_hotkey_pair_internal(
 obs_hotkey_registerer_t type, void *registerer,
 void *(*weak_ref)(void *), struct obs_context_data *context,
 const char *name0, const char *description0, const char *name1,
 const char *description1, obs_hotkey_active_func func0,
 obs_hotkey_active_func func1, void *data0, void *data1)
{

 if (!lock())
  return OBS_INVALID_HOTKEY_PAIR_ID;

 obs_hotkey_pair_t *pair =
  create_hotkey_pair(context, func0, func1, data0, data1);

 pair->id[0] = obs_hotkey_register_internal(type, weak_ref(registerer),
         context, name0, description0,
         obs_hotkey_pair_first_func,
         pair);

 pair->id[1] = obs_hotkey_register_internal(type, weak_ref(registerer),
         context, name1, description1,
         obs_hotkey_pair_second_func,
         pair);

 size_t idx;
 if (find_id(pair->id[0], &idx))
  obs->hotkeys.hotkeys.array[idx].pair_partner_id = pair->id[1];

 if (find_id(pair->id[1], &idx))
  obs->hotkeys.hotkeys.array[idx].pair_partner_id = pair->id[0];

 obs_hotkey_pair_id id = pair->pair_id;

 unlock();
 return id;
}
