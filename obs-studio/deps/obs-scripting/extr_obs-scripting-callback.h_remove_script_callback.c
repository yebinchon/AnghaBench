
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_callback {int removed; int (* on_remove ) (struct script_callback*) ;struct script_callback** p_prev_next; struct script_callback* next; } ;


 int detach_mutex ;
 struct script_callback* detached_callbacks ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct script_callback*) ;

__attribute__((used)) static inline void remove_script_callback(struct script_callback *cb)
{
 cb->removed = 1;

 struct script_callback *next = cb->next;
 if (next)
  next->p_prev_next = cb->p_prev_next;
 *cb->p_prev_next = cb->next;

 pthread_mutex_lock(&detach_mutex);
 next = detached_callbacks;
 cb->next = next;
 if (next)
  next->p_prev_next = &cb->next;
 cb->p_prev_next = &detached_callbacks;
 detached_callbacks = cb;
 pthread_mutex_unlock(&detach_mutex);

 if (cb->on_remove)
  cb->on_remove(cb);
}
