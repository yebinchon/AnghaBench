
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ PTHREAD_CANCELED ;
 int assert (int) ;
 int func ;
 int mx ;
 scalar_t__ pthread_cancel (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

int
main(int argc, char * argv[])
{
  pthread_t t;
  void* result = (void*)0;

  assert(pthread_mutex_lock(&mx) == 0);

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);
  assert(pthread_cancel(t) == 0);

  assert(pthread_mutex_unlock(&mx) == 0);

  assert(pthread_join(t, &result) == 0);
  assert(result == (void*)PTHREAD_CANCELED);

  return 0;
}
