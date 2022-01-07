
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_callback {struct script_callback* next; struct script_callback** p_prev_next; } ;


 int detach_mutex ;
 int just_free_script_callback (struct script_callback*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void free_script_callback(struct script_callback *cb)
{
 pthread_mutex_lock(&detach_mutex);
 struct script_callback *next = cb->next;
 if (next)
  next->p_prev_next = cb->p_prev_next;
 *cb->p_prev_next = cb->next;
 pthread_mutex_unlock(&detach_mutex);

 just_free_script_callback(cb);
}
