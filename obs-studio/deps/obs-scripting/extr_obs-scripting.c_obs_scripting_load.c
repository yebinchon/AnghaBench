
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int circlebuf_init (int *) ;
 int defer_call_mutex ;
 int defer_call_queue ;
 int defer_call_semaphore ;
 int defer_call_thread ;
 int defer_thread ;
 int detach_mutex ;
 int obs_lua_load () ;
 int obs_python_load () ;
 int obs_scripting_load_python (int *) ;
 int os_sem_destroy (int ) ;
 scalar_t__ os_sem_init (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int scripting_loaded ;

bool obs_scripting_load(void)
{
 circlebuf_init(&defer_call_queue);

 if (pthread_mutex_init(&detach_mutex, ((void*)0)) != 0) {
  return 0;
 }
 if (pthread_mutex_init(&defer_call_mutex, ((void*)0)) != 0) {
  pthread_mutex_destroy(&detach_mutex);
  return 0;
 }
 if (os_sem_init(&defer_call_semaphore, 0) != 0) {
  pthread_mutex_destroy(&defer_call_mutex);
  pthread_mutex_destroy(&detach_mutex);
  return 0;
 }

 if (pthread_create(&defer_call_thread, ((void*)0), defer_thread, ((void*)0)) != 0) {
  os_sem_destroy(defer_call_semaphore);
  pthread_mutex_destroy(&defer_call_mutex);
  pthread_mutex_destroy(&detach_mutex);
  return 0;
 }
 scripting_loaded = 1;
 return 1;
}
