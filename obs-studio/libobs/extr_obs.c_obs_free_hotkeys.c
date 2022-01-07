
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_hotkeys {int mutex; int sceneitem_hide; int sceneitem_show; int push_to_talk; int push_to_mute; int unmute; int mute; } ;
struct TYPE_2__ {struct obs_core_hotkeys hotkeys; } ;


 int bfree (int ) ;
 TYPE_1__* obs ;
 int obs_hotkey_name_map_free () ;
 int obs_hotkeys_platform_free (struct obs_core_hotkeys*) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static inline void obs_free_hotkeys(void)
{
 struct obs_core_hotkeys *hotkeys = &obs->hotkeys;

 bfree(hotkeys->mute);
 bfree(hotkeys->unmute);
 bfree(hotkeys->push_to_mute);
 bfree(hotkeys->push_to_talk);
 bfree(hotkeys->sceneitem_show);
 bfree(hotkeys->sceneitem_hide);

 obs_hotkey_name_map_free();

 obs_hotkeys_platform_free(hotkeys);
 pthread_mutex_destroy(&hotkeys->mutex);
}
