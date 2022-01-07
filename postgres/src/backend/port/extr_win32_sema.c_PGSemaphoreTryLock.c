
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGSemaphore ;
typedef scalar_t__ DWORD ;


 int EAGAIN ;
 int FATAL ;
 int GetLastError () ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int errno ;

bool
PGSemaphoreTryLock(PGSemaphore sema)
{
 DWORD ret;

 ret = WaitForSingleObject(sema, 0);

 if (ret == WAIT_OBJECT_0)
 {

  return 1;
 }
 else if (ret == WAIT_TIMEOUT)
 {

  errno = EAGAIN;
  return 0;
 }


 ereport(FATAL,
   (errmsg("could not try-lock semaphore: error code %lu",
     GetLastError())));


 return 0;
}
