
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pgthreadlock_t ;


 scalar_t__ default_threadlock ;
 scalar_t__ pg_g_threadlock ;

pgthreadlock_t
PQregisterThreadLock(pgthreadlock_t newhandler)
{
 pgthreadlock_t prev = pg_g_threadlock;

 if (newhandler)
  pg_g_threadlock = newhandler;
 else
  pg_g_threadlock = default_threadlock;

 return prev;
}
