
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_callback {struct script_callback* next; } ;


 int LOG_INFO ;
 int blog (int ,char*,int) ;
 int circlebuf_free (int *) ;
 int defer_call_exit ;
 int defer_call_mutex ;
 int defer_call_queue ;
 int defer_call_semaphore ;
 int defer_call_thread ;
 int detach_mutex ;
 struct script_callback* detached_callbacks ;
 int dstr_free (int *) ;
 int file_filter ;
 int just_free_script_callback (struct script_callback*) ;
 int obs_lua_unload () ;
 int obs_python_unload () ;
 int os_sem_destroy (int ) ;
 int os_sem_post (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int scripting_loaded ;

void obs_scripting_unload(void)
{
 if (!scripting_loaded)
  return;
 dstr_free(&file_filter);



 int total_detached = 0;

 pthread_mutex_lock(&detach_mutex);

 struct script_callback *cur = detached_callbacks;
 while (cur) {
  struct script_callback *next = cur->next;
  just_free_script_callback(cur);
  cur = next;

  ++total_detached;
 }

 pthread_mutex_unlock(&detach_mutex);
 pthread_mutex_destroy(&detach_mutex);

 blog(LOG_INFO, "[Scripting] Total detached callbacks: %d",
      total_detached);



 pthread_mutex_lock(&defer_call_mutex);



 defer_call_exit = 1;
 circlebuf_free(&defer_call_queue);

 pthread_mutex_unlock(&defer_call_mutex);

 os_sem_post(defer_call_semaphore);
 pthread_join(defer_call_thread, ((void*)0));

 pthread_mutex_destroy(&defer_call_mutex);
 os_sem_destroy(defer_call_semaphore);

 scripting_loaded = 0;
}
