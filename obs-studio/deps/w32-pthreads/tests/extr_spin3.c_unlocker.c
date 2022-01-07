
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int pthread_spin_unlock (int *) ;
 int spin ;
 int wasHere ;

void * unlocker(void * arg)
{
  int expectedResult = (int)(size_t)arg;

  wasHere++;
  assert(pthread_spin_unlock(&spin) == expectedResult);
  wasHere++;
  return ((void*)0);
}
