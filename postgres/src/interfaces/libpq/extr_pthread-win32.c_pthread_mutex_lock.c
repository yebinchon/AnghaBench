
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int EnterCriticalSection (int ) ;

int
pthread_mutex_lock(pthread_mutex_t *mp)
{
 if (!*mp)
  return 1;
 EnterCriticalSection(*mp);
 return 0;
}
