
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;
typedef int PGcancel ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int PQfreeCancel (int *) ;
 int * PQgetCancel (int ) ;
 int * cancelConn ;
 int cancelConnLock ;
 TYPE_1__ pset ;

void
SetCancelConn(void)
{
 PGcancel *oldCancelConn;






 oldCancelConn = cancelConn;

 cancelConn = ((void*)0);

 if (oldCancelConn != ((void*)0))
  PQfreeCancel(oldCancelConn);

 cancelConn = PQgetCancel(pset.db);




}
