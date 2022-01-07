
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;


 int ERROR ;
 int PQerrorMessage (int ) ;
 scalar_t__ PQflush (int ) ;
 scalar_t__ PQputCopyData (int ,char const*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int pchomp (int ) ;

__attribute__((used)) static void
libpqrcv_send(WalReceiverConn *conn, const char *buffer, int nbytes)
{
 if (PQputCopyData(conn->streamConn, buffer, nbytes) <= 0 ||
  PQflush(conn->streamConn))
  ereport(ERROR,
    (errmsg("could not send data to WAL stream: %s",
      pchomp(PQerrorMessage(conn->streamConn)))));
}
