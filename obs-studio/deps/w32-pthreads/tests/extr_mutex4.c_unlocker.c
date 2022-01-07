
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int mutex1 ;
 int pthread_mutex_unlock (int *) ;
 int wasHere ;

void * unlocker(void * arg)
{
  int expectedResult = (int)(size_t)arg;

  wasHere++;
  assert(pthread_mutex_unlock(&mutex1) == expectedResult);
  wasHere++;
  return ((void*)0);
}
