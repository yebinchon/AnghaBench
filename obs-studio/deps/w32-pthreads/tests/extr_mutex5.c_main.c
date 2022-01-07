
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FOIL (int) ;
 int PTHREAD_MUTEX_DEFAULT ;
 int PTHREAD_MUTEX_ERRORCHECK ;
 scalar_t__ PTHREAD_MUTEX_ERRORCHECK_NP ;
 scalar_t__ PTHREAD_MUTEX_FAST_NP ;
 int PTHREAD_MUTEX_NORMAL ;
 int PTHREAD_MUTEX_RECURSIVE ;
 scalar_t__ PTHREAD_MUTEX_RECURSIVE_NP ;
 int assert (int) ;
 int mxAttr ;
 scalar_t__ pthread_mutexattr_gettype (int *,int*) ;
 scalar_t__ pthread_mutexattr_init (int *) ;

int
main()
{
  int mxType = -1;

  assert(FOIL(PTHREAD_MUTEX_DEFAULT) == PTHREAD_MUTEX_NORMAL);
  assert(FOIL(PTHREAD_MUTEX_DEFAULT) != PTHREAD_MUTEX_ERRORCHECK);
  assert(FOIL(PTHREAD_MUTEX_DEFAULT) != PTHREAD_MUTEX_RECURSIVE);
  assert(FOIL(PTHREAD_MUTEX_RECURSIVE) != PTHREAD_MUTEX_ERRORCHECK);

  assert(FOIL(PTHREAD_MUTEX_NORMAL) == PTHREAD_MUTEX_FAST_NP);
  assert(FOIL(PTHREAD_MUTEX_RECURSIVE) == PTHREAD_MUTEX_RECURSIVE_NP);
  assert(FOIL(PTHREAD_MUTEX_ERRORCHECK) == PTHREAD_MUTEX_ERRORCHECK_NP);

  assert(pthread_mutexattr_init(&mxAttr) == 0);
  assert(pthread_mutexattr_gettype(&mxAttr, &mxType) == 0);
  assert(mxType == PTHREAD_MUTEX_NORMAL);

  return 0;
}
