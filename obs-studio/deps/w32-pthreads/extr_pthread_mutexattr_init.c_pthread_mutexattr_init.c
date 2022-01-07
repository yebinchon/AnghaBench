
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int kind; int pshared; } ;


 int ENOMEM ;
 int PTHREAD_MUTEX_DEFAULT ;
 int PTHREAD_PROCESS_PRIVATE ;
 scalar_t__ calloc (int,int) ;

int
pthread_mutexattr_init (pthread_mutexattr_t * attr)
{
  int result = 0;
  pthread_mutexattr_t ma;

  ma = (pthread_mutexattr_t) calloc (1, sizeof (*ma));

  if (ma == ((void*)0))
    {
      result = ENOMEM;
    }
  else
    {
      ma->pshared = PTHREAD_PROCESS_PRIVATE;
      ma->kind = PTHREAD_MUTEX_DEFAULT;
    }

  *attr = ma;

  return (result);
}
