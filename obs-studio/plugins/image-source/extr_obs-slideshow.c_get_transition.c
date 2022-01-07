
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {int mutex; int * transition; } ;
typedef int obs_source_t ;


 int obs_source_addref (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static obs_source_t *get_transition(struct slideshow *ss)
{
 obs_source_t *tr;

 pthread_mutex_lock(&ss->mutex);
 tr = ss->transition;
 obs_source_addref(tr);
 pthread_mutex_unlock(&ss->mutex);

 return tr;
}
