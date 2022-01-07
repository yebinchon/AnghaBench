
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_mutexattr_t ;


 int PTHREAD_MUTEX_ERRORCHECK ;
 int PTHREAD_MUTEX_NORMAL ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int PTHREAD_MUTEX_ROBUST ;
 int Sleep (int) ;
 int assert (int) ;
 int inheritor ;
 int lockCount ;
 int mutex ;
 int owner ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 scalar_t__ pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_setrobust (int *,int ) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

int
main()
{
  pthread_t to, ti;
  pthread_mutexattr_t ma;

  assert(pthread_mutexattr_init(&ma) == 0);
  assert(pthread_mutexattr_setrobust(&ma, PTHREAD_MUTEX_ROBUST) == 0);


  lockCount = 0;
  assert(pthread_mutex_init(&mutex, &ma) == 0);
  assert(pthread_create(&to, ((void*)0), owner, ((void*)0)) == 0);
  Sleep(100);
  assert(pthread_create(&ti, ((void*)0), inheritor, ((void*)0)) == 0);
  assert(pthread_join(to, ((void*)0)) == 0);
  assert(pthread_join(ti, ((void*)0)) == 0);
  assert(lockCount == 2);
  assert(pthread_mutex_lock(&mutex) == 0);
  assert(pthread_mutex_unlock(&mutex) == 0);
  assert(pthread_mutex_destroy(&mutex) == 0);


  lockCount = 0;
  assert(pthread_mutexattr_settype(&ma, PTHREAD_MUTEX_NORMAL) == 0);
  assert(pthread_mutex_init(&mutex, &ma) == 0);
  assert(pthread_create(&to, ((void*)0), owner, ((void*)0)) == 0);
  Sleep(100);
  assert(pthread_create(&ti, ((void*)0), inheritor, ((void*)0)) == 0);
  assert(pthread_join(to, ((void*)0)) == 0);
  assert(pthread_join(ti, ((void*)0)) == 0);
  assert(lockCount == 2);
  assert(pthread_mutex_lock(&mutex) == 0);
  assert(pthread_mutex_unlock(&mutex) == 0);
  assert(pthread_mutex_destroy(&mutex) == 0);


  lockCount = 0;
  assert(pthread_mutexattr_settype(&ma, PTHREAD_MUTEX_ERRORCHECK) == 0);
  assert(pthread_mutex_init(&mutex, &ma) == 0);
  assert(pthread_create(&to, ((void*)0), owner, ((void*)0)) == 0);
  Sleep(100);
  assert(pthread_create(&ti, ((void*)0), inheritor, ((void*)0)) == 0);
  assert(pthread_join(to, ((void*)0)) == 0);
  assert(pthread_join(ti, ((void*)0)) == 0);
  assert(lockCount == 2);
  assert(pthread_mutex_lock(&mutex) == 0);
  assert(pthread_mutex_unlock(&mutex) == 0);
  assert(pthread_mutex_destroy(&mutex) == 0);


  lockCount = 0;
  assert(pthread_mutexattr_settype(&ma, PTHREAD_MUTEX_RECURSIVE) == 0);
  assert(pthread_mutex_init(&mutex, &ma) == 0);
  assert(pthread_create(&to, ((void*)0), owner, ((void*)0)) == 0);
  Sleep(100);
  assert(pthread_create(&ti, ((void*)0), inheritor, ((void*)0)) == 0);
  assert(pthread_join(to, ((void*)0)) == 0);
  assert(pthread_join(ti, ((void*)0)) == 0);
  assert(lockCount == 2);
  assert(pthread_mutex_lock(&mutex) == 0);
  assert(pthread_mutex_unlock(&mutex) == 0);
  assert(pthread_mutex_destroy(&mutex) == 0);

  assert(pthread_mutexattr_destroy(&ma) == 0);

  return 0;
}
