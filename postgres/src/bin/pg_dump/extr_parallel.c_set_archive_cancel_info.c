
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* myAH; } ;
struct TYPE_4__ {int * connCancel; } ;
typedef int PGconn ;
typedef int PGcancel ;
typedef TYPE_1__ ArchiveHandle ;


 int EnterCriticalSection (int *) ;
 scalar_t__ GetCurrentThreadId () ;
 int LeaveCriticalSection (int *) ;
 int PQfreeCancel (int *) ;
 int * PQgetCancel (int *) ;
 scalar_t__ mainThreadId ;
 int setup_cancel_handler () ;
 TYPE_2__ signal_info ;
 int signal_info_lock ;

void
set_archive_cancel_info(ArchiveHandle *AH, PGconn *conn)
{
 PGcancel *oldConnCancel;







 setup_cancel_handler();
 oldConnCancel = AH->connCancel;

 AH->connCancel = ((void*)0);

 if (oldConnCancel != ((void*)0))
  PQfreeCancel(oldConnCancel);


 if (conn)
  AH->connCancel = PQgetCancel(conn);
 signal_info.myAH = AH;
}
