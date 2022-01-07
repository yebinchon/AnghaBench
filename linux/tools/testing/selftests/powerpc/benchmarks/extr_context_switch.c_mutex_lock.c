
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUTEX_PRIVATE_FLAG ;
 int FUTEX_WAIT ;
 int cmpxchg (unsigned long*,int ,int) ;
 int processes ;
 int sys_futex (unsigned long*,int,int,int *,int *,int ) ;
 int xchg (unsigned long*,int) ;

__attribute__((used)) static int mutex_lock(unsigned long *m)
{
 int c;
 int flags = FUTEX_WAIT;
 if (!processes)
  flags |= FUTEX_PRIVATE_FLAG;

 c = cmpxchg(m, 0, 1);
 if (!c)
  return 0;

 if (c == 1)
  c = xchg(m, 2);

 while (c) {
  sys_futex(m, flags, 2, ((void*)0), ((void*)0), 0);
  c = xchg(m, 2);
 }

 return 0;
}
