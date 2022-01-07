
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int assert (int) ;
 scalar_t__ sem_post (int *) ;

void *
thr(void * arg)
{
  assert(sem_post((sem_t *)arg) == 0);

  return 0;
}
