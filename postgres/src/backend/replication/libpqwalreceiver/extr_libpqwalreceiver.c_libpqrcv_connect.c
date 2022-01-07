
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int keys ;
struct TYPE_4__ {int logical; int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;
typedef scalar_t__ PostgresPollingStatusType ;


 int Assert (int) ;
 scalar_t__ CONNECTION_BAD ;
 scalar_t__ CONNECTION_OK ;
 scalar_t__ CONNECTION_STARTED ;
 char* GetDatabaseEncodingName () ;
 int MyLatch ;
 scalar_t__ PGRES_POLLING_FAILED ;
 scalar_t__ PGRES_POLLING_OK ;
 scalar_t__ PGRES_POLLING_READING ;
 scalar_t__ PGRES_POLLING_WRITING ;
 scalar_t__ PQconnectPoll (int ) ;
 int PQconnectStartParams (char const**,char const**,int) ;
 int PQerrorMessage (int ) ;
 int PQsocket (int ) ;
 scalar_t__ PQstatus (int ) ;
 int ProcessWalRcvInterrupts () ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_LIBPQWALRECEIVER_CONNECT ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_SOCKET_CONNECTED ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;
 int WaitLatchOrSocket (int ,int,int ,int ,int ) ;
 TYPE_1__* palloc0 (int) ;
 char* pchomp (int ) ;

__attribute__((used)) static WalReceiverConn *
libpqrcv_connect(const char *conninfo, bool logical, const char *appname,
     char **err)
{
 WalReceiverConn *conn;
 PostgresPollingStatusType status;
 const char *keys[5];
 const char *vals[5];
 int i = 0;





 keys[i] = "dbname";
 vals[i] = conninfo;
 keys[++i] = "replication";
 vals[i] = logical ? "database" : "true";
 if (!logical)
 {




  keys[++i] = "dbname";
  vals[i] = "replication";
 }
 keys[++i] = "fallback_application_name";
 vals[i] = appname;
 if (logical)
 {
  keys[++i] = "client_encoding";
  vals[i] = GetDatabaseEncodingName();
 }
 keys[++i] = ((void*)0);
 vals[i] = ((void*)0);

 Assert(i < sizeof(keys));

 conn = palloc0(sizeof(WalReceiverConn));
 conn->streamConn = PQconnectStartParams(keys, vals,
                                  1);
 if (PQstatus(conn->streamConn) == CONNECTION_BAD)
 {
  *err = pchomp(PQerrorMessage(conn->streamConn));
  return ((void*)0);
 }






 status = PGRES_POLLING_WRITING;
 do
 {
  int io_flag;
  int rc;

  if (status == PGRES_POLLING_READING)
   io_flag = WL_SOCKET_READABLE;





  else
   io_flag = WL_SOCKET_WRITEABLE;

  rc = WaitLatchOrSocket(MyLatch,
          WL_EXIT_ON_PM_DEATH | WL_LATCH_SET | io_flag,
          PQsocket(conn->streamConn),
          0,
          WAIT_EVENT_LIBPQWALRECEIVER_CONNECT);


  if (rc & WL_LATCH_SET)
  {
   ResetLatch(MyLatch);
   ProcessWalRcvInterrupts();
  }


  if (rc & io_flag)
   status = PQconnectPoll(conn->streamConn);
 } while (status != PGRES_POLLING_OK && status != PGRES_POLLING_FAILED);

 if (PQstatus(conn->streamConn) != CONNECTION_OK)
 {
  *err = pchomp(PQerrorMessage(conn->streamConn));
  return ((void*)0);
 }

 conn->logical = logical;

 return conn;
}
