
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sec_attrs ;
struct TYPE_4__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef int PGSemaphore ;
typedef scalar_t__ HANDLE ;


 int Assert (int) ;
 scalar_t__ CreateSemaphore (TYPE_1__*,int,int,int *) ;
 int GetLastError () ;
 int IsUnderPostmaster ;
 int PANIC ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ maxSems ;
 scalar_t__* mySemSet ;
 scalar_t__ numSems ;

PGSemaphore
PGSemaphoreCreate(void)
{
 HANDLE cur_handle;
 SECURITY_ATTRIBUTES sec_attrs;


 Assert(!IsUnderPostmaster);

 if (numSems >= maxSems)
  elog(PANIC, "too many semaphores created");

 ZeroMemory(&sec_attrs, sizeof(sec_attrs));
 sec_attrs.nLength = sizeof(sec_attrs);
 sec_attrs.lpSecurityDescriptor = ((void*)0);
 sec_attrs.bInheritHandle = TRUE;


 cur_handle = CreateSemaphore(&sec_attrs, 1, 32767, ((void*)0));
 if (cur_handle)
 {

  mySemSet[numSems++] = cur_handle;
 }
 else
  ereport(PANIC,
    (errmsg("could not create semaphore: error code %lu",
      GetLastError())));

 return (PGSemaphore) cur_handle;
}
