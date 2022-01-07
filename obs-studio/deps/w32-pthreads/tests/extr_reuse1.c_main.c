
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ p; scalar_t__ x; } ;
typedef TYPE_1__ pthread_t ;
typedef int pthread_attr_t ;


 int NUMTHREADS ;
 int PTHREAD_CREATE_JOINABLE ;
 int assert (int) ;
 int func ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (TYPE_1__*,int *,int ,void*) ;
 int pthread_equal (TYPE_1__,TYPE_1__) ;
 scalar_t__ pthread_join (TYPE_1__,void**) ;
 int washere ;

int
main()
{
  pthread_t t,
            last_t;
  pthread_attr_t attr;
  void * result = ((void*)0);
  int i;

  assert(pthread_attr_init(&attr) == 0);;
  assert(pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE) == 0);

  washere = 0;
  assert(pthread_create(&t, &attr, func, ((void*)0)) == 0);
  assert(pthread_join(t, &result) == 0);;
  assert((int)(size_t)result == 0);
  assert(washere == 1);
  last_t = t;

  for (i = 1; i < NUMTHREADS; i++)
    {
      washere = 0;
      assert(pthread_create(&t, &attr, func, (void *)(size_t)i) == 0);
      pthread_join(t, &result);
      assert((int)(size_t) result == i);
      assert(washere == 1);

      assert(!pthread_equal(t, last_t));

      assert(t.p == last_t.p);

      assert(t.x == last_t.x+1);
      last_t = t;
    }

  return 0;
}
