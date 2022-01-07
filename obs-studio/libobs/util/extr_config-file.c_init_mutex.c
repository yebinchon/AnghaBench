
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ config_t ;


 int PTHREAD_MUTEX_RECURSIVE ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

__attribute__((used)) static inline bool init_mutex(config_t *config)
{
 pthread_mutexattr_t attr;
 if (pthread_mutexattr_init(&attr) != 0)
  return 0;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  return 0;
 return pthread_mutex_init(&config->mutex, &attr) == 0;
}
