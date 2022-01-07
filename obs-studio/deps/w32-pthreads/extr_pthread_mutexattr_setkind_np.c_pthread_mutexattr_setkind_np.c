
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;


 int pthread_mutexattr_settype (int *,int) ;

int
pthread_mutexattr_setkind_np (pthread_mutexattr_t * attr, int kind)
{
  return pthread_mutexattr_settype (attr, kind);
}
