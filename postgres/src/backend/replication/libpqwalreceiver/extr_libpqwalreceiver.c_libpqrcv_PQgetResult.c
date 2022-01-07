
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int MyLatch ;
 scalar_t__ PQconsumeInput (int *) ;
 int * PQgetResult (int *) ;
 scalar_t__ PQisBusy (int *) ;
 int PQsocket (int *) ;
 int ProcessWalRcvInterrupts () ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_LIBPQWALRECEIVER_RECEIVE ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_SOCKET_READABLE ;
 int WaitLatchOrSocket (int ,int,int ,int ,int ) ;

__attribute__((used)) static PGresult *
libpqrcv_PQgetResult(PGconn *streamConn)
{




 while (PQisBusy(streamConn))
 {
  int rc;






  rc = WaitLatchOrSocket(MyLatch,
          WL_EXIT_ON_PM_DEATH | WL_SOCKET_READABLE |
          WL_LATCH_SET,
          PQsocket(streamConn),
          0,
          WAIT_EVENT_LIBPQWALRECEIVER_RECEIVE);


  if (rc & WL_LATCH_SET)
  {
   ResetLatch(MyLatch);
   ProcessWalRcvInterrupts();
  }


  if (PQconsumeInput(streamConn) == 0)
  {

   return ((void*)0);
  }
 }


 return PQgetResult(streamConn);
}
