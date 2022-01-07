
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int LeaveCriticalSection (int ) ;

int
pthread_mutex_unlock(pthread_mutex_t *mp)
{
 if (!*mp)
  return 1;
 LeaveCriticalSection(*mp);
 return 0;
}
