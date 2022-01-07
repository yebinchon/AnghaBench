
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {int mutex; scalar_t__ transition; int source; } ;
typedef int (* obs_source_enum_proc_t ) (int ,scalar_t__,void*) ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ss_enum_sources(void *data, obs_source_enum_proc_t cb, void *param)
{
 struct slideshow *ss = data;

 pthread_mutex_lock(&ss->mutex);
 if (ss->transition)
  cb(ss->source, ss->transition, param);
 pthread_mutex_unlock(&ss->mutex);
}
