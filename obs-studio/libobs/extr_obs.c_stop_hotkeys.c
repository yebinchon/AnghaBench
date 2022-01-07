
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_hotkeys {int hotkey_thread_initialized; int stop_event; int hotkey_thread; } ;
struct TYPE_2__ {struct obs_core_hotkeys hotkeys; } ;


 TYPE_1__* obs ;
 int obs_hotkeys_free () ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,void**) ;

__attribute__((used)) static inline void stop_hotkeys(void)
{
 struct obs_core_hotkeys *hotkeys = &obs->hotkeys;
 void *thread_ret;

 if (hotkeys->hotkey_thread_initialized) {
  os_event_signal(hotkeys->stop_event);
  pthread_join(hotkeys->hotkey_thread, &thread_ret);
  hotkeys->hotkey_thread_initialized = 0;
 }

 os_event_destroy(hotkeys->stop_event);
 obs_hotkeys_free();
}
