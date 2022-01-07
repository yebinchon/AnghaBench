
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_mutex_t ;
typedef int CRITICAL_SECTION ;


 int InitializeCriticalSection (int *) ;
 scalar_t__ malloc (int) ;

int
pthread_mutex_init(pthread_mutex_t *mp, void *attr)
{
 *mp = (CRITICAL_SECTION *) malloc(sizeof(CRITICAL_SECTION));
 if (!*mp)
  return 1;
 InitializeCriticalSection(*mp);
 return 0;
}
