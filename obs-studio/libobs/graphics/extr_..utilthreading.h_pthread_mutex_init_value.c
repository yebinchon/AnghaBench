
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int PTHREAD_MUTEX_INITIALIZER ;

__attribute__((used)) static inline void pthread_mutex_init_value(pthread_mutex_t *mutex)
{
 pthread_mutex_t init_val = PTHREAD_MUTEX_INITIALIZER;
 if (!mutex)
  return;

 *mutex = init_val;
}
