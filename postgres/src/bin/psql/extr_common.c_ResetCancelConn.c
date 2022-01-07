
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGcancel ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int PQfreeCancel (int *) ;
 int * cancelConn ;
 int cancelConnLock ;

void
ResetCancelConn(void)
{
 PGcancel *oldCancelConn;





 oldCancelConn = cancelConn;

 cancelConn = ((void*)0);

 if (oldCancelConn != ((void*)0))
  PQfreeCancel(oldCancelConn);




}
