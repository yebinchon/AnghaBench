
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_hotkeys {int hotkey_thread_initialized; int hotkey_thread; int stop_event; int mutex; void* sceneitem_hide; void* sceneitem_show; void* push_to_talk; void* push_to_mute; void* unmute; void* mute; int name_map_init_token; int signals; int hotkeys; } ;
typedef int pthread_mutexattr_t ;
struct TYPE_2__ {int signals; struct obs_core_hotkeys hotkeys; } ;


 int OS_EVENT_TYPE_MANUAL ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int assert (int ) ;
 void* bstrdup (char*) ;
 int da_init (int ) ;
 TYPE_1__* obs ;
 int obs_hotkey_thread ;
 int obs_hotkeys_platform_init (struct obs_core_hotkeys*) ;
 int obs_pthread_once_init_token ;
 scalar_t__ os_event_init (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

__attribute__((used)) static inline bool obs_init_hotkeys(void)
{
 struct obs_core_hotkeys *hotkeys = &obs->hotkeys;
 pthread_mutexattr_t attr;
 bool success = 0;

 assert(hotkeys != ((void*)0));

 da_init(hotkeys->hotkeys);
 hotkeys->signals = obs->signals;
 hotkeys->name_map_init_token = obs_pthread_once_init_token;
 hotkeys->mute = bstrdup("Mute");
 hotkeys->unmute = bstrdup("Unmute");
 hotkeys->push_to_mute = bstrdup("Push-to-mute");
 hotkeys->push_to_talk = bstrdup("Push-to-talk");
 hotkeys->sceneitem_show = bstrdup("Show '%1'");
 hotkeys->sceneitem_hide = bstrdup("Hide '%1'");

 if (!obs_hotkeys_platform_init(hotkeys))
  return 0;

 if (pthread_mutexattr_init(&attr) != 0)
  return 0;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  goto fail;
 if (pthread_mutex_init(&hotkeys->mutex, &attr) != 0)
  goto fail;

 if (os_event_init(&hotkeys->stop_event, OS_EVENT_TYPE_MANUAL) != 0)
  goto fail;
 if (pthread_create(&hotkeys->hotkey_thread, ((void*)0), obs_hotkey_thread,
      ((void*)0)))
  goto fail;

 hotkeys->hotkey_thread_initialized = 1;

 success = 1;

fail:
 pthread_mutexattr_destroy(&attr);
 return success;
}
