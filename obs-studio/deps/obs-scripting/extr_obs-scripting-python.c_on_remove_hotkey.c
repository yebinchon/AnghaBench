
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extra; } ;
struct python_obs_callback {TYPE_1__ base; } ;
typedef scalar_t__ obs_hotkey_id ;


 scalar_t__ OBS_INVALID_HOTKEY_ID ;
 int calldata_int (int *,char*) ;
 int defer_call_post (int ,void*) ;
 int defer_hotkey_unregister ;

__attribute__((used)) static void on_remove_hotkey(void *p_cb)
{
 struct python_obs_callback *cb = p_cb;
 obs_hotkey_id id = (obs_hotkey_id)calldata_int(&cb->base.extra, "id");

 if (id != OBS_INVALID_HOTKEY_ID)
  defer_call_post(defer_hotkey_unregister, (void *)(uintptr_t)id);
}
