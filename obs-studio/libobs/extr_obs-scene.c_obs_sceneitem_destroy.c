
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int audio_actions; scalar_t__ source; int actions_mutex; int toggle_visibility; int private_settings; scalar_t__ item_render; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int bfree (TYPE_1__*) ;
 int da_free (int ) ;
 int gs_texrender_destroy (scalar_t__) ;
 int obs_data_release (int ) ;
 int obs_enter_graphics () ;
 int obs_hotkey_pair_unregister (int ) ;
 int obs_leave_graphics () ;
 int obs_source_get_signal_handler (scalar_t__) ;
 int obs_source_release (scalar_t__) ;
 int pthread_mutex_destroy (int *) ;
 int sceneitem_renamed ;
 int signal_handler_disconnect (int ,char*,int ,TYPE_1__*) ;

__attribute__((used)) static void obs_sceneitem_destroy(obs_sceneitem_t *item)
{
 if (item) {
  if (item->item_render) {
   obs_enter_graphics();
   gs_texrender_destroy(item->item_render);
   obs_leave_graphics();
  }
  obs_data_release(item->private_settings);
  obs_hotkey_pair_unregister(item->toggle_visibility);
  pthread_mutex_destroy(&item->actions_mutex);
  signal_handler_disconnect(
   obs_source_get_signal_handler(item->source), "rename",
   sceneitem_renamed, item);
  if (item->source)
   obs_source_release(item->source);
  da_free(item->audio_actions);
  bfree(item);
 }
}
