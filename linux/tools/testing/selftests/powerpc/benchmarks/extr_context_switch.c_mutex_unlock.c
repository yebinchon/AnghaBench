
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUTEX_PRIVATE_FLAG ;
 int FUTEX_WAKE ;
 int processes ;
 int sys_futex (unsigned long*,int,int,int *,int *,int ) ;
 int xchg (unsigned long*,int ) ;

__attribute__((used)) static int mutex_unlock(unsigned long *m)
{
 int flags = FUTEX_WAKE;
 if (!processes)
  flags |= FUTEX_PRIVATE_FLAG;

 if (*m == 2)
  *m = 0;
 else if (xchg(m, 0) == 1)
  return 0;

 sys_futex(m, flags, 1, ((void*)0), ((void*)0), 0);

 return 0;
}
