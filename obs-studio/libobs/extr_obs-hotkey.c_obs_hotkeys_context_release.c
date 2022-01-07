
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_context_data {int hotkey_data; } ;


 int context_release_hotkey_pairs (struct obs_context_data*) ;
 int context_release_hotkeys (struct obs_context_data*) ;
 int lock () ;
 int obs_data_release (int ) ;
 int unlock () ;

void obs_hotkeys_context_release(struct obs_context_data *context)
{
 if (!lock())
  return;

 context_release_hotkeys(context);
 context_release_hotkey_pairs(context);

 obs_data_release(context->hotkey_data);
 unlock();
}
