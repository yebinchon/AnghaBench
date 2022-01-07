
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user_visible; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef int obs_hotkey_t ;
typedef int * obs_hotkey_pair_id ;


 int UNUSED_PARAMETER (int *) ;
 int obs_sceneitem_release (TYPE_1__*) ;
 int obs_sceneitem_set_visible (TYPE_1__*,int) ;
 TYPE_1__* sceneitem_get_ref (void*) ;

__attribute__((used)) static bool hotkey_show_sceneitem(void *data, obs_hotkey_pair_id id,
      obs_hotkey_t *hotkey, bool pressed)
{
 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(hotkey);

 obs_sceneitem_t *si = sceneitem_get_ref(data);
 if (pressed && si && !si->user_visible) {
  obs_sceneitem_set_visible(si, 1);
  obs_sceneitem_release(si);
  return 1;
 }

 obs_sceneitem_release(si);
 return 0;
}
