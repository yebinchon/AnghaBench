
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_MONOTONIC ;
 scalar_t__ LISTSIZE ;
 int checklist (int *,scalar_t__) ;
 int clock_gettime (int ,int *) ;
 int done ;
 int * global_list ;
 int list_lock ;
 scalar_t__ listcount ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void *shared_thread(void *arg)
{
 while (!done) {

  pthread_mutex_lock(&list_lock);


  if (listcount >= LISTSIZE) {
   checklist(global_list, LISTSIZE);
   listcount = 0;
  }
  clock_gettime(CLOCK_MONOTONIC, &global_list[listcount++]);

  pthread_mutex_unlock(&list_lock);
 }
 return ((void*)0);
}
